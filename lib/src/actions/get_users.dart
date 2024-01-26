import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/app_user.dart';
import 'app_action.dart';

part 'get_users.freezed.dart';

@freezed
class GetUsers with _$GetUsers implements AppAction {
  const factory GetUsers(List<String> uids) = GetUsersStart;

  const factory GetUsers.successful(List<AppUser> users) = GetUsersSuccessful;

  @Implements<ErrorAction>()
  const factory GetUsers.error(Object error, StackTrace stackTrace) = GetUsersError;
}
