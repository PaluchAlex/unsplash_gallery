import 'package:freezed_annotation/freezed_annotation.dart';

import 'photo_urls.dart';
import 'photo_user.dart';

part 'photo.freezed.dart';

part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required PhotoUrls urls,
    @Default('') @JsonKey(name: 'alt_description') String description,
    required int likes,
    required PhotoUser user,
  }) = Photo$;

  factory Photo.fromJson(Map<dynamic, dynamic> json) => _$PhotoFromJson(Map<String, dynamic>.from(json));
}
