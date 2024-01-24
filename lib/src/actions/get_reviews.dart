import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/review.dart';
import 'app_action.dart';

part 'get_reviews.freezed.dart';

@freezed
class GetReviews with _$GetReviews implements AppAction {
  const factory GetReviews(int photoId) = GetReviewsStart;

  const factory GetReviews.successful(List<Review> reviews) = GetReviewsSuccessful;

  @Implements<ErrorAction>()
  const factory GetReviews.error(Object error, StackTrace stackTrace) = GetReviewsError;
}
