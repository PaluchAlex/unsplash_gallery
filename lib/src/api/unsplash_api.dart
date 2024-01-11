import 'dart:convert';

import 'package:http/http.dart';

import '../models/photo.dart';

class UnsplashApi {
  UnsplashApi({required String? accessKey, required Client client})
      : _accessKey = accessKey,
        _client = client;

  final String? _accessKey;
  final Client _client;

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
}

// Future<void> main() async {
//   await dotenv.load();
//   final String? key = dotenv.env['UNSPLASH_API_KEY'];
//   final Client client = Client();
//   final UnsplashApi api = UnsplashApi(accessKey: key, client: client);
//   final List<Photo> items = await api.loadItems(1, query: 'cat');
//   items.forEach(print);
// }
