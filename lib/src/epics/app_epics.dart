import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/app_action.dart';
import '../actions/create_user.dart';
import '../actions/load_items.dart';
import '../api/auth_api.dart';
import '../api/unsplash_api.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/photo.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics(this.api, this.authApi);

  final UnsplashApi api;
  final AuthApi authApi;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoadItemsStart>(_loadItemsStart).call,
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
    ])(actions, store);
  }

  Stream<AppAction> _loadItemsStart(Stream<LoadItemsStart> actions, EpicStore<AppState> store) {
    return actions //
        .debounceTime(const Duration(milliseconds: 500))
        .switchMap((LoadItemsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return api.loadItems(
              store.state.page,
              query: store.state.query,
              color: action.color,
            );
          })
          .map((List<Photo> photos) => LoadItems.successful(photos))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => LoadItems.error(error, stackTrace));
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.createUser(email: action.email, password: action.password))
          .map((AppUser user) => CreateUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace));
    });
  }
}
