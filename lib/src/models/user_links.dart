import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_links.freezed.dart';

part 'user_links.g.dart';

@freezed
class UserLinks with _$UserLinks {
  const factory UserLinks({
    required String html,
  }) = UserLinks$;

  factory UserLinks.fromJson(Map<dynamic, dynamic> json) => _$UserLinksFromJson(Map<String, dynamic>.from(json));
}
