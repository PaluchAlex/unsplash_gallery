import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart';

import '../models/photo.dart';
import '../models/review.dart';

class UnsplashApi {
  UnsplashApi(this._firestore, {required String? accessKey, required Client client})
      : _accessKey = accessKey,
        _client = client;

  final String? _accessKey;
  final Client _client;
  final FirebaseFirestore _firestore;

  Future<List<Photo>> loadItems(int page, {String query = '', String color = ''}) async {
    if (query.isEmpty && color.isEmpty) {
      final Response response = await _client.get(
        Uri.parse('https://api.unsplash'
            '.com/photos/?page=$page'),
        headers: <String, String>{'Authorization': 'Client-ID $_accessKey'},
      );
      if (response.statusCode == 200) {
        /// cast decoded as List<dynamic>
        final List<dynamic> decoded = jsonDecode(response.body) as List<dynamic>;

        /// add to items as a instance of Class Photo
        return decoded.map((dynamic e) => Photo.fromJson(e as Map<String, dynamic>)).toList();

        ///prepare for loading next page
      }
    } else {
      final Client client = Client();
      final Uri uri = Uri.parse('https://api.unsplash.com/search/photos');
      final Response response = await client.get(
        uri.replace(
          queryParameters: <String, String>{
            'page': '$page',
            if (query.isEmpty && color.isNotEmpty) 'query': 'color',
            if (query.isNotEmpty) 'query': query,
            if (color.isNotEmpty) 'color': color,
          },
        ),
        headers: <String, String>{'Authorization': 'Client-ID $_accessKey'},
      );
      if (response.statusCode == 200) {
        /// cast decoded as List<dynamic>
        final Map<String, dynamic> decoded = jsonDecode(response.body) as Map<String, dynamic>;

        final List<dynamic> results = decoded['results'] as List<dynamic>;

        return results.map((dynamic item) => Photo.fromJson(item as Map<String, dynamic>)).toList();

        /// add to items as a instance of Class Photo
        // for (final dynamic item in results) {
        //   items.add(Photo(item as Map<String, dynamic>));
        // }

        ///prepare for loading next page
      }
    }
    return <Photo>[];
  }

  Future<List<Review>> getReviews(String photoId) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore
        .collection('movies/$photoId/reviews') //
        .orderBy('createdAt', descending: true)
        .get();

    return snapshot.docs //
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Review.fromJson(doc.data()))
        .toList();
  }

  Future<Review> createReview({
    required String photoId,
    required String text,
    required String uid,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('movies/$photoId/reviews').doc();

    final Review review = Review(
      id: ref.id,
      text: text,
      uid: uid,
      createdAt: DateTime.now(),
    );

    await ref.set(review.toJson());

    return review;
  }
}
