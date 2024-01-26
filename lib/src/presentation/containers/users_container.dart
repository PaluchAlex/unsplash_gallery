import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/app_user.dart';

class UsersContainer extends StatelessWidget {
  const UsersContainer({super.key, required this.builder});

  final ViewModelBuilder<Map<String, AppUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, AppUser>>(
      converter: (Store<AppState> store) {
        return store.state.users;
      },
      builder: builder,
    );
  }
}
