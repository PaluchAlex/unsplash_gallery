import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/app_user.dart';
import 'app_action.dart';

part 'login.freezed.dart';

@freezed
class Login with _$Login implements AppAction {
  const factory Login({
    required String email,
    required String password,
    required ActionResult result,
  }) = LoginStart;

  const factory Login.successful(AppUser user) = LoginSuccessful;

  @Implements<ErrorAction>()
  const factory Login.error(Object error, StackTrace stackTrace) = LoginError;
}
