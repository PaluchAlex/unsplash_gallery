import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/app_user.dart';
import 'app_action.dart';

part 'change_picture.freezed.dart';

@freezed
class ChangePicture with _$ChangePicture implements AppAction {
  const factory ChangePicture(String path) = ChangePictureStart;

  const factory ChangePicture.successful(AppUser user) = ChangePictureSuccessful;

  @Implements<ErrorAction>()
  const factory ChangePicture.error(Object error, StackTrace stackTrace) = ChangePictureError;
}
