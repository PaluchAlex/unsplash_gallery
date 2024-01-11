import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_links.dart';
part 'photo_user.freezed.dart';
part 'photo_user.g.dart';

@freezed
class PhotoUser with _$PhotoUser {
  const factory PhotoUser({
    required UserLinks links,
  }) = PhotoUser$;

  factory PhotoUser.fromJson(Map<dynamic, dynamic> json) => _$PhotoUserFromJson(Map<String, dynamic>.from(json));
}
