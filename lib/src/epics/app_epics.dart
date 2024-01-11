import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/load_items.dart';
import '../api/unsplash_api.dart';
import '../models/app_state.dart';
import '../models/photo.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics(this.api);

  final UnsplashApi api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoadItemsStart>(_loadItemsStart).call,
    ])(actions, store);
  }
  Stream<dynamic> _loadItemsStart(Stream<LoadItemsStart> actions,
      EpicStore<AppState> store) {
    return actions
        .asyncMap((LoadItemsStart action) => api.loadItems(action.page,
        query: action.query, color: action.color))
        .map((List<Photo> movies) => LoadItems.successful(movies))
        .onErrorReturnWith((Object error, StackTrace stackTrace) =>
        LoadItems.error(error, stackTrace));
  }
}
