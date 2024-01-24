import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/photo.dart';
import 'app_action.dart';

part 'set.freezed.dart';

@freezed
class SetQuery with _$SetQuery implements AppAction {
  const factory SetQuery(String query) = SetQuery$;
}

@freezed
class SetSelectedPhoto with _$SetSelectedPhoto implements AppAction {
  const factory SetSelectedPhoto(Photo photo) = SetSelectedPhoto$;
}
