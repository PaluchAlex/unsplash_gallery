import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/photo.dart';

class PhotosContainer extends StatelessWidget {
  const PhotosContainer({super.key, required this.builder});

  final ViewModelBuilder<List<Photo>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Photo>>(
        builder: builder,
        converter: (Store<AppState> store) {
          return store.state.photos;
        });
  }
}
