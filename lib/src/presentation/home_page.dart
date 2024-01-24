import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../actions/get_reviews.dart';
import '../actions/load_items.dart';
import '../actions/set.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/photo.dart';
import 'containers/app_user_container.dart';
import 'containers/is_loading_container.dart';
import 'containers/photos_container.dart';
import 'extensions.dart';
import 'user_picture.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController controller = ScrollController();
  final TextEditingController textController = TextEditingController();

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

    /// load items when 2 screens of scroll remain
    if (!context.state.isLoading && offset > threshold) {
      context.dispatch(LoadItems(color: color));
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

  String query = '';
  String color = '';

  @override
  Widget build(BuildContext context) {
    return PhotosContainer(
      builder: (BuildContext context, List<Photo> items) {
        return IsLoadingContainer(
          builder: (BuildContext context, bool isLoading) {
            return RefreshIndicator(
              onRefresh: () async {
                textController.clear();
                context
                  ..dispatch(const SetQuery(''))
                  ..dispatch(const LoadItems());

                context.store.onChange.firstWhere((AppState state) => !state.isLoading);
              },
              child: AppUserContainer(
                builder: (BuildContext context, AppUser? user) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Unsplash Gallery'),
                      centerTitle: true,
                      actions: <Widget>[
                        if (user != null)
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            child: const UserPicture(),
                          ),
                      ],
                    ),
                    body: Column(
                      children: <Widget>[
                        /// search area
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: textController,
                                  decoration: const InputDecoration(
                                    hintText: 'Search',
                                  ),
                                  onChanged: (String value) {
                                    query = value;
                                    context
                                      ..dispatch(SetQuery(query))
                                      ..dispatch(LoadItems(color: color));
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: DropdownMenu<String>(
                                onSelected: (String? value) {
                                  final String localColor = value ?? '';
                                  color = localColor;
                                  context
                                    ..dispatch(SetQuery(query))
                                    ..dispatch(LoadItems(color: color));
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

                        /// items area
                        Expanded(
                          child: Builder(
                            builder: (BuildContext context) {
                              return CustomScrollView(
                                controller: controller,
                                slivers: <Widget>[
                                  /// no items found case
                                  if (items.isEmpty && !isLoading)
                                    const SliverToBoxAdapter(
                                      child: Center(
                                        child: Text('no items found'),
                                      ),
                                    ),
                                  SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                      (BuildContext context, int index) {
                                        final Photo photo = items[index];

                                        /// the item
                                        return Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Stack(
                                            alignment: AlignmentDirectional.bottomCenter,
                                            children: <Widget>[
                                              /// item image area
                                              InkWell(
                                                onTap: () {
                                                  context
                                                    ..dispatch(SetSelectedPhoto(photo))
                                                    ..dispatch(GetReviews(photo.id));
                                                  Navigator.pushNamed(context, '/photo');
                                                },
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(20),
                                                  child: Image.network(
                                                    photo.urls.small,
                                                    //height: 445,
                                                    loadingBuilder: (BuildContext context, Widget widget,
                                                        ImageChunkEvent? progress) {
                                                      if (progress == null) {
                                                        return widget;
                                                      }
                                                      return SizedBox(
                                                        height: 345,
                                                        child: Center(
                                                          child: CircularProgressIndicator(
                                                            value: progress.cumulativeBytesLoaded /
                                                                (progress.expectedTotalBytes ?? 1),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),

                                              /// item info area
                                              Align(
                                                alignment: Alignment.bottomCenter,
                                                child: ListTile(
                                                  title: GestureDetector(
                                                    onTap: () {
                                                      _launchURL(Uri.parse(photo.user.links.html));
                                                      if (user != null) {
                                                        if (kDebugMode) {
                                                          print('user is: $user for photo: $photo');
                                                        }
                                                      } else {
                                                        Navigator.pushNamed(context, '/createUser');
                                                      }
                                                    },
                                                    child: Align(
                                                      alignment: Alignment.bottomCenter,
                                                      child: Row(
                                                        children: <Widget>[
                                                          Container(
                                                            padding: const EdgeInsets.all(5.0),
                                                            decoration: BoxDecoration(
                                                              borderRadius: const BorderRadius.all(Radius.circular(14)),
                                                              color: const Color(0xFFFFFFFF).withOpacity(0.5),
                                                            ),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                style:
                                                                    const TextStyle(color: Colors.pink, fontSize: 18),
                                                                children: <InlineSpan>[
                                                                  WidgetSpan(
                                                                    child: Icon(
                                                                      Icons.favorite,
                                                                      color: Colors.pink,
                                                                      size: 20.0,
                                                                      semanticLabel: '${photo.likes} Likes',
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '${photo.likes}',
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(child: Container()),
                                                          Container(
                                                            padding: const EdgeInsets.all(5.0),
                                                            decoration: BoxDecoration(
                                                              borderRadius: const BorderRadius.all(Radius.circular(14)),
                                                              color: const Color(0xFFFFFFFF).withOpacity(0.5),
                                                            ),
                                                            child: Text(
                                                              style: const TextStyle(fontSize: 18),
                                                              photo.user.name.length > 17
                                                                  ? '@${photo.user.name.substring(0, 17)}...'
                                                                  : '@${photo.user.name}',
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      childCount: items.length,
                                    ),
                                  ),

                                  /// circular progress indicator when is loading
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
