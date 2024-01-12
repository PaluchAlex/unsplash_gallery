import 'dart:core';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../actions/load_items.dart';
import '../models/photo.dart';
import 'containers/is_loading_container.dart';
import 'containers/photos_container.dart';
import 'extentions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController controller = ScrollController();
  final List<Photo> items = <Photo>[];
  // int page = 1;
  // String query = '';
  // String color = '';

  @override
  void initState() {
    super.initState();

    context.dispatch(const LoadItems());

    controller.addListener(_onScroll);
  }

  void _onScroll() {
    final double offset = controller.offset;
    final double maxExtent = controller.position.maxScrollExtent;
    final double screenHeight = MediaQuery.sizeOf(context).height;
    final double threshold = maxExtent - 2 * screenHeight;

    /// load items when scrolled past 80% of max
    if (!context.state.isLoading && offset > threshold) {
      context.dispatch(const LoadItems());
    }
  }

  @override
  void dispose() {
    controller.removeListener(_onScroll);
    super.dispose();
  }

  Future<void> _launchURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  // void resetContent() {
  //   //page = 1;
  //   items.clear();
  // }

  @override
  Widget build(BuildContext context) {
    return PhotosContainer(
      builder: (BuildContext context, List<Photo> items) {
        return IsLoadingContainer(
          builder: (BuildContext context, bool isLoading) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Unsplash Gallery'),
                centerTitle: true,
              ),
              body: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: 'Search',
                            ),
                            onChanged: (String value) {
                              //query = value;

                              /// reset pages
                              //resetContent();
                              // loadItems();
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: DropdownMenu<String>(
                          onSelected: (String? value) {
                            //color = value ?? '';
                            //resetContent();
                            // loadItems();
                          },
                          dropdownMenuEntries: allColors.map(
                            (String item) {
                              return DropdownMenuEntry<String>(
                                value: item,
                                label: item,
                              );
                            },
                          ).toList(),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Builder(
                      builder: (BuildContext context) {
                        return CustomScrollView(
                          controller: controller,
                          slivers: <Widget>[
                            if (items.isEmpty && !isLoading)
                              const SliverToBoxAdapter(
                                child: Center(
                                  child: Text('no items found'),
                                ),
                              ),
                            SliverList(
                              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                                final Photo photo = items[index];

                                return Column(
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        photo.user.links;
                                        _launchURL(Uri.parse(photo.user.links.html));
                                      },
                                      child: Image.network(
                                        photo.urls.small,
                                        //height: 445,
                                        loadingBuilder:
                                            (BuildContext context, Widget widget, ImageChunkEvent? progress) {
                                          if (progress == null) {
                                            return widget;
                                          }
                                          return SizedBox(
                                            height: 345,
                                            child: Center(
                                              child: CircularProgressIndicator(
                                                value:
                                                    progress.cumulativeBytesLoaded / (progress.expectedTotalBytes ?? 1),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ListTile(
                                        title: Row(
                                          children: <Widget>[
                                            Text('Likes: ${photo.likes}'),
                                            Expanded(child: Container()),
                                            Text('Author: ${photo.user.name}'),
                                          ],
                                        ),
                                        subtitle: Center(child: Text(photo.description)),
                                      ),
                                    ),
                                  ],
                                );
                              }, childCount: items.length),
                            ),
                            if (isLoading)
                              const SliverToBoxAdapter(
                                child: Padding(
                                  padding: EdgeInsets.all(32),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 16),
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

const List<String> allColors = <String>[
  '',
  'black_and_white',
  'black',
  'white',
  'yellow',
  'orange',
  'red',
  'purple',
  'magenta',
  'green',
  'teal',
  'blue'
];
