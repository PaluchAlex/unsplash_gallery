import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/photo.dart';

class SelectedPhotoContainer extends StatelessWidget {
  const SelectedPhotoContainer({super.key, required this.builder});

  final ViewModelBuilder<Photo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Photo>(
      converter: (Store<AppState> store) {
        return store.state.selectedPhoto!;
      },
      builder: builder,
    );
  }
}
