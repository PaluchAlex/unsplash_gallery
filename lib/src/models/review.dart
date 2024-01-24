import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required String id,
    required String text,
    required String uid,
    required DateTime createdAt,
  }) = Review$;

  factory Review.fromJson(Map<dynamic, dynamic> json) => _$ReviewFromJson(Map<String, dynamic>.from(json));
}
