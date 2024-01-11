import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/photo.dart';
import 'app_action.dart';

part 'load_items.freezed.dart';

@freezed
class LoadItems with _$LoadItems implements AppAction {
  const factory LoadItems(
    int page, {
    @Default('') String query,
    @Default('') String color,
  }) = LoadItemsStart;

  const factory LoadItems.successful(List<Photo> photos) = LoadItemsSuccessful;

  @Implements<ErrorAction>()
  const factory LoadItems.error(Object error, StackTrace stackTrace) = LoadItemsError;
}
