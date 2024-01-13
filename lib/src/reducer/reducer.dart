import 'dart:developer';

import 'package:redux/redux.dart';

import '../actions/load_items.dart';
import '../actions/set.dart';
import '../models/app_state.dart';
import '../models/photo.dart';

AppState reducer(AppState state, dynamic action) {
  log('$action');

  return combineReducers<AppState>(
    <Reducer<AppState>>[
      TypedReducer<AppState, LoadItemsStart>(_loadItemsStart).call,
      TypedReducer<AppState, LoadItemsSuccessful>(_loadItemsSuccessful).call,
      TypedReducer<AppState, LoadItemsError>(_loadItemsError).call,
      TypedReducer<AppState, SetQuery>(_setQuery).call,
    ],
  )(state, action);
}

AppState _loadItemsStart(AppState state, LoadItemsStart action) {
  return state.copyWith(isLoading: true);
}

AppState _loadItemsError(AppState state, LoadItemsError action) {
  return state.copyWith(isLoading: false);
}

AppState _setQuery(AppState state, SetQuery action) {
  return state.copyWith(
    query: action.query,
    page: 1,
    photos: <Photo>[],
  );
}

AppState _loadItemsSuccessful(AppState state, LoadItemsSuccessful action) {
  return state.copyWith(
    isLoading: false,
    page: state.page + 1,
    photos: <Photo>[...state.photos, ...action.photos],
  );
}
