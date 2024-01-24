import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_urls.freezed.dart';

part 'photo_urls.g.dart';

@freezed
class PhotoUrls with _$PhotoUrls {
  const factory PhotoUrls({
    required String small,
    required String regular,
  }) = PhotoUrls$;

  factory PhotoUrls.fromJson(Map<dynamic, dynamic> json) => _$PhotoUrlsFromJson(Map<String, dynamic>.from(json));
}
