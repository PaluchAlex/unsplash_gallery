import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_action.dart';

part 'sign_out.freezed.dart';

@freezed
class SignOut with _$SignOut implements AppAction {
  const factory SignOut() = SignOutStart;

  const factory SignOut.successful() = SignOutSuccessful;

  @Implements<ErrorAction>()
  const factory SignOut.error(Object error, StackTrace stackTrace) = SignOutError;
}
