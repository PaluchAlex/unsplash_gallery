import 'dart:developer';

import 'package:redux/redux.dart';

import '../actions/change_picture.dart';
import '../actions/create_review.dart';
import '../actions/create_user.dart';
import '../actions/get_current_user.dart';
import '../actions/get_reviews.dart';
import '../actions/load_items.dart';
import '../actions/login.dart';
import '../actions/set.dart';
import '../actions/sign_out.dart';
import '../models/app_state.dart';
import '../models/photo.dart';
import '../models/review.dart';

AppState reducer(AppState state, dynamic action) {
  log('$action');

  return combineReducers<AppState>(
    <Reducer<AppState>>[
      TypedReducer<AppState, LoadItemsStart>(_loadItemsStart).call,
      TypedReducer<AppState, LoadItemsSuccessful>(_loadItemsSuccessful).call,
      TypedReducer<AppState, LoadItemsError>(_loadItemsError).call,
      TypedReducer<AppState, SetQuery>(_setQuery).call,
      TypedReducer<AppState, CreateUserSuccessful>(_createUserSuccessful).call,
      TypedReducer<AppState, GetCurrentUserSuccessful>(_getCurrentUserSuccessful).call,
      TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful).call,
      TypedReducer<AppState, LoginSuccessful>(_loginSuccessful).call,
      TypedReducer<AppState, ChangePictureSuccessful>(_changePictureSuccessful).call,
      TypedReducer<AppState, SetSelectedPhoto>(_setSelectedPhoto).call,
      TypedReducer<AppState, GetReviewsSuccessful>(_getReviewsSuccessful).call,
      TypedReducer<AppState, CreateReviewSuccessful>(_createReviewSuccessful).call,
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

AppState _createUserSuccessful(AppState state, CreateUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _getCurrentUserSuccessful(AppState state, GetCurrentUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return state.copyWith(user: null);
}

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _changePictureSuccessful(AppState state, ChangePictureSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _setSelectedPhoto(AppState state, SetSelectedPhoto action) {
  return state.copyWith(selectedPhoto: action.photo);
}

AppState _getReviewsSuccessful(AppState state, GetReviewsSuccessful action) {
  return state.copyWith(reviews: action.reviews);
}

AppState _createReviewSuccessful(AppState state, CreateReviewSuccessful action) {
  return state.copyWith(reviews: <Review>[action.review, ...state.reviews]);
}
