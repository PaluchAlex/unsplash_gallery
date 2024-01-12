import 'dart:developer';

import 'package:redux/redux.dart';

import '../actions/load_items.dart';
import '../models/app_state.dart';
import '../models/photo.dart';

AppState reducer(AppState state, dynamic action) {
  log('$action');

  return combineReducers<AppState>(
    <Reducer<AppState>>[
      TypedReducer<AppState, LoadItemsSuccessful>(_loadItemsSuccessful).call,
      TypedReducer<AppState, LoadItemsError>(_loadItemsError).call,
    ],
  )(state, action);
}

AppState _loadItemsError(AppState state, LoadItemsError action) {
  return state.copyWith(isLoading: false);
}

AppState _loadItemsSuccessful(AppState state, LoadItemsSuccessful action) {
  return state.copyWith(
    isLoading: false,
    page: state.page + 1,
    photos: <Photo>[...state.photos, ...action.photos],
  );
}
