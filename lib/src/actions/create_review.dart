import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/review.dart';
import 'app_action.dart';

part 'create_review.freezed.dart';

@freezed
class CreateReview with _$CreateReview implements AppAction {
  const factory CreateReview(String text) = CreateReviewStart;

  const factory CreateReview.successful(Review review) = CreateReviewSuccessful;

  @Implements<ErrorAction>()
  const factory CreateReview.error(Object error, StackTrace stackTrace) = CreateReviewError;
}
