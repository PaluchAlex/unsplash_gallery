import 'package:flutter/material.dart';

import '../models/photo.dart';
import '../models/review.dart';
import 'containers/reviews_container.dart';
import 'containers/selected_photo_container.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectedPhotoContainer(
      builder: (BuildContext context, Photo photo) {
        return Scaffold(
          appBar: AppBar(
            title: Text(photo.user.name),
          ),
          body: ReviewsContainer(
            builder: (BuildContext context, List<Review> reviews) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: SizedBox(
                            height: 300,
                            child: AspectRatio(
                              aspectRatio: 0.69,
                              child: Image.network(
                                photo.urls.regular,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          '${photo.likes}',
                          style: const TextStyle(
                            color: Colors.amber,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(photo.description),
                      ],
                    ),
                  ),
                  if (reviews.isNotEmpty)
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          final Review review = reviews[index];

                          return ListTile(
                            title: Text(review.text),
                          );
                        },
                        childCount: reviews.length,
                      ),
                    )
                  else
                    const SliverFillRemaining(
                      child: Text('Be the first to leave a review'),
                    )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
