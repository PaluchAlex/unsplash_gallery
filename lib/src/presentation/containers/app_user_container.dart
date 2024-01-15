import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/app_user.dart';

class AppUserContainer extends StatelessWidget {
  const AppUserContainer({super.key, required this.builder});

  final ViewModelBuilder<AppUser?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppUser?>(
      converter: (Store<AppState> store) {
        return store.state.user;
      },
      builder: builder,
    );
  }
}
