import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../actions/create_review.dart';
import '../models/app_user.dart';
import '../models/photo.dart';
import '../models/review.dart';
import 'containers/reviews_container.dart';
import 'containers/selected_photo_container.dart';
import 'containers/users_container.dart';
import 'extensions.dart';
import 'widgets/full_screen_image.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  Future<void> _launchURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SelectedPhotoContainer(
      builder: (BuildContext context, Photo photo) {
        return Scaffold(
          appBar: AppBar(
            title: Center(child: Text(photo.user.name)),
          ),
          body: ReviewsContainer(
            builder: (BuildContext context, List<Review> reviews) {
              return UsersContainer(
                builder: (BuildContext context, Map<String, AppUser> users) {
                  return CustomScrollView(
                    slivers: <Widget>[
                      SliverToBoxAdapter(
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) => FullScreenImage(imageUrl: photo.urls.regular),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  height: 300,
                                  child: Image.network(
                                    photo.urls.regular,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(color: Colors.pink, fontSize: 30),
                                children: <InlineSpan>[
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.pink,
                                      size: 32.0,
                                      semanticLabel: '${photo.likes} Likes',
                                    ),
                                  ),
                                  TextSpan(
                                    text: '${photo.likes}',
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Text(photo.description),
                            GestureDetector(
                              onTap: () {
                                _launchURL(Uri.parse(photo.user.links.html));
                              },
                              child: Text(
                                'Image by @${photo.user.name}',
                                style: const TextStyle(color: Colors.purple),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SliverPadding(
                        padding: EdgeInsets.all(16.0),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            'Reviews',
                            style: TextStyle(fontSize: 32.0),
                          ),
                        ),
                      ),
                      if (reviews.isNotEmpty)
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              final Review review = reviews[index];
                              final AppUser? user = users[review.uid];

                              return ListTile(
                                title: Text(review.text),
                                subtitle: Text(<Object>[
                                  if (user != null) user.displayName,
                                  review.createdAt.toString().substring(0, 16),
                                ].join('\n')),
                              );
                            },
                            childCount: reviews.length,
                          ),
                        )
                      else
                        const SliverFillRemaining(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(
                              child: Text(
                                'Be the first to leave a review',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ),
                          ),
                        )
                    ],
                  );
                },
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final TextEditingController controller = TextEditingController();
              showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Add your review'),
                    content: TextField(
                      controller: controller,
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final String text = controller.text.trim();
                          if (text.isNotEmpty) {
                            context.dispatch(CreateReview(text));
                          }
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Icon(Icons.add_comment),
          ),
        );
      },
    );
  }
}
