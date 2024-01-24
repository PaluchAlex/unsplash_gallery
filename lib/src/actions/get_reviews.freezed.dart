// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_reviews.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetReviews {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String photoId) $default, {
    required TResult Function(List<Review> reviews) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String photoId)? $default, {
    TResult? Function(List<Review> reviews)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String photoId)? $default, {
    TResult Function(List<Review> reviews)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetReviewsStart value)? $default, {
    TResult? Function(GetReviewsSuccessful value)? successful,
    TResult? Function(GetReviewsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReviewsCopyWith<$Res> {
  factory $GetReviewsCopyWith(GetReviews value, $Res Function(GetReviews) then) =
      _$GetReviewsCopyWithImpl<$Res, GetReviews>;
}

/// @nodoc
class _$GetReviewsCopyWithImpl<$Res, $Val extends GetReviews> implements $GetReviewsCopyWith<$Res> {
  _$GetReviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetReviewsStartImplCopyWith<$Res> {
  factory _$$GetReviewsStartImplCopyWith(_$GetReviewsStartImpl value, $Res Function(_$GetReviewsStartImpl) then) =
      __$$GetReviewsStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String photoId});
}

/// @nodoc
class __$$GetReviewsStartImplCopyWithImpl<$Res> extends _$GetReviewsCopyWithImpl<$Res, _$GetReviewsStartImpl>
    implements _$$GetReviewsStartImplCopyWith<$Res> {
  __$$GetReviewsStartImplCopyWithImpl(_$GetReviewsStartImpl _value, $Res Function(_$GetReviewsStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoId = null,
  }) {
    return _then(_$GetReviewsStartImpl(
      null == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetReviewsStartImpl implements GetReviewsStart {
  const _$GetReviewsStartImpl(this.photoId);

  @override
  final String photoId;

  @override
  String toString() {
    return 'GetReviews(photoId: $photoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReviewsStartImpl &&
            (identical(other.photoId, photoId) || other.photoId == photoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReviewsStartImplCopyWith<_$GetReviewsStartImpl> get copyWith =>
      __$$GetReviewsStartImplCopyWithImpl<_$GetReviewsStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String photoId) $default, {
    required TResult Function(List<Review> reviews) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(photoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String photoId)? $default, {
    TResult? Function(List<Review> reviews)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(photoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String photoId)? $default, {
    TResult Function(List<Review> reviews)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(photoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetReviewsStart value)? $default, {
    TResult? Function(GetReviewsSuccessful value)? successful,
    TResult? Function(GetReviewsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetReviewsStart implements GetReviews {
  const factory GetReviewsStart(final String photoId) = _$GetReviewsStartImpl;

  String get photoId;
  @JsonKey(ignore: true)
  _$$GetReviewsStartImplCopyWith<_$GetReviewsStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetReviewsSuccessfulImplCopyWith<$Res> {
  factory _$$GetReviewsSuccessfulImplCopyWith(
          _$GetReviewsSuccessfulImpl value, $Res Function(_$GetReviewsSuccessfulImpl) then) =
      __$$GetReviewsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Review> reviews});
}

/// @nodoc
class __$$GetReviewsSuccessfulImplCopyWithImpl<$Res> extends _$GetReviewsCopyWithImpl<$Res, _$GetReviewsSuccessfulImpl>
    implements _$$GetReviewsSuccessfulImplCopyWith<$Res> {
  __$$GetReviewsSuccessfulImplCopyWithImpl(
      _$GetReviewsSuccessfulImpl _value, $Res Function(_$GetReviewsSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
  }) {
    return _then(_$GetReviewsSuccessfulImpl(
      null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc

class _$GetReviewsSuccessfulImpl implements GetReviewsSuccessful {
  const _$GetReviewsSuccessfulImpl(final List<Review> reviews) : _reviews = reviews;

  final List<Review> _reviews;
  @override
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'GetReviews.successful(reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReviewsSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReviewsSuccessfulImplCopyWith<_$GetReviewsSuccessfulImpl> get copyWith =>
      __$$GetReviewsSuccessfulImplCopyWithImpl<_$GetReviewsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String photoId) $default, {
    required TResult Function(List<Review> reviews) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String photoId)? $default, {
    TResult? Function(List<Review> reviews)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String photoId)? $default, {
    TResult Function(List<Review> reviews)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetReviewsStart value)? $default, {
    TResult? Function(GetReviewsSuccessful value)? successful,
    TResult? Function(GetReviewsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetReviewsSuccessful implements GetReviews {
  const factory GetReviewsSuccessful(final List<Review> reviews) = _$GetReviewsSuccessfulImpl;

  List<Review> get reviews;
  @JsonKey(ignore: true)
  _$$GetReviewsSuccessfulImplCopyWith<_$GetReviewsSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetReviewsErrorImplCopyWith<$Res> {
  factory _$$GetReviewsErrorImplCopyWith(_$GetReviewsErrorImpl value, $Res Function(_$GetReviewsErrorImpl) then) =
      __$$GetReviewsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetReviewsErrorImplCopyWithImpl<$Res> extends _$GetReviewsCopyWithImpl<$Res, _$GetReviewsErrorImpl>
    implements _$$GetReviewsErrorImplCopyWith<$Res> {
  __$$GetReviewsErrorImplCopyWithImpl(_$GetReviewsErrorImpl _value, $Res Function(_$GetReviewsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetReviewsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetReviewsErrorImpl implements GetReviewsError {
  const _$GetReviewsErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetReviews.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReviewsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReviewsErrorImplCopyWith<_$GetReviewsErrorImpl> get copyWith =>
      __$$GetReviewsErrorImplCopyWithImpl<_$GetReviewsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String photoId) $default, {
    required TResult Function(List<Review> reviews) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String photoId)? $default, {
    TResult? Function(List<Review> reviews)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String photoId)? $default, {
    TResult Function(List<Review> reviews)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetReviewsStart value)? $default, {
    TResult? Function(GetReviewsSuccessful value)? successful,
    TResult? Function(GetReviewsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetReviewsError implements GetReviews, ErrorAction {
  const factory GetReviewsError(final Object error, final StackTrace stackTrace) = _$GetReviewsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetReviewsErrorImplCopyWith<_$GetReviewsErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
