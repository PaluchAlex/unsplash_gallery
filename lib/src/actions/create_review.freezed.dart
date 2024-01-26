// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateReview {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function(Review review) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text)? $default, {
    TResult? Function(Review review)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function(Review review)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateReviewStart value)? $default, {
    TResult? Function(CreateReviewSuccessful value)? successful,
    TResult? Function(CreateReviewError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReviewCopyWith<$Res> {
  factory $CreateReviewCopyWith(CreateReview value, $Res Function(CreateReview) then) =
      _$CreateReviewCopyWithImpl<$Res, CreateReview>;
}

/// @nodoc
class _$CreateReviewCopyWithImpl<$Res, $Val extends CreateReview> implements $CreateReviewCopyWith<$Res> {
  _$CreateReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateReviewStartImplCopyWith<$Res> {
  factory _$$CreateReviewStartImplCopyWith(_$CreateReviewStartImpl value, $Res Function(_$CreateReviewStartImpl) then) =
      __$$CreateReviewStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$CreateReviewStartImplCopyWithImpl<$Res> extends _$CreateReviewCopyWithImpl<$Res, _$CreateReviewStartImpl>
    implements _$$CreateReviewStartImplCopyWith<$Res> {
  __$$CreateReviewStartImplCopyWithImpl(_$CreateReviewStartImpl _value, $Res Function(_$CreateReviewStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$CreateReviewStartImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateReviewStartImpl implements CreateReviewStart {
  const _$CreateReviewStartImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'CreateReview(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReviewStartImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReviewStartImplCopyWith<_$CreateReviewStartImpl> get copyWith =>
      __$$CreateReviewStartImplCopyWithImpl<_$CreateReviewStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function(Review review) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text)? $default, {
    TResult? Function(Review review)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function(Review review)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateReviewStart value)? $default, {
    TResult? Function(CreateReviewSuccessful value)? successful,
    TResult? Function(CreateReviewError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateReviewStart implements CreateReview {
  const factory CreateReviewStart(final String text) = _$CreateReviewStartImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$CreateReviewStartImplCopyWith<_$CreateReviewStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateReviewSuccessfulImplCopyWith<$Res> {
  factory _$$CreateReviewSuccessfulImplCopyWith(
          _$CreateReviewSuccessfulImpl value, $Res Function(_$CreateReviewSuccessfulImpl) then) =
      __$$CreateReviewSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Review review});

  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class __$$CreateReviewSuccessfulImplCopyWithImpl<$Res>
    extends _$CreateReviewCopyWithImpl<$Res, _$CreateReviewSuccessfulImpl>
    implements _$$CreateReviewSuccessfulImplCopyWith<$Res> {
  __$$CreateReviewSuccessfulImplCopyWithImpl(
      _$CreateReviewSuccessfulImpl _value, $Res Function(_$CreateReviewSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? review = null,
  }) {
    return _then(_$CreateReviewSuccessfulImpl(
      null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewCopyWith<$Res> get review {
    return $ReviewCopyWith<$Res>(_value.review, (value) {
      return _then(_value.copyWith(review: value));
    });
  }
}

/// @nodoc

class _$CreateReviewSuccessfulImpl implements CreateReviewSuccessful {
  const _$CreateReviewSuccessfulImpl(this.review);

  @override
  final Review review;

  @override
  String toString() {
    return 'CreateReview.successful(review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReviewSuccessfulImpl &&
            (identical(other.review, review) || other.review == review));
  }

  @override
  int get hashCode => Object.hash(runtimeType, review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReviewSuccessfulImplCopyWith<_$CreateReviewSuccessfulImpl> get copyWith =>
      __$$CreateReviewSuccessfulImplCopyWithImpl<_$CreateReviewSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function(Review review) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(review);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text)? $default, {
    TResult? Function(Review review)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function(Review review)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(review);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateReviewStart value)? $default, {
    TResult? Function(CreateReviewSuccessful value)? successful,
    TResult? Function(CreateReviewError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateReviewSuccessful implements CreateReview {
  const factory CreateReviewSuccessful(final Review review) = _$CreateReviewSuccessfulImpl;

  Review get review;
  @JsonKey(ignore: true)
  _$$CreateReviewSuccessfulImplCopyWith<_$CreateReviewSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateReviewErrorImplCopyWith<$Res> {
  factory _$$CreateReviewErrorImplCopyWith(_$CreateReviewErrorImpl value, $Res Function(_$CreateReviewErrorImpl) then) =
      __$$CreateReviewErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreateReviewErrorImplCopyWithImpl<$Res> extends _$CreateReviewCopyWithImpl<$Res, _$CreateReviewErrorImpl>
    implements _$$CreateReviewErrorImplCopyWith<$Res> {
  __$$CreateReviewErrorImplCopyWithImpl(_$CreateReviewErrorImpl _value, $Res Function(_$CreateReviewErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$CreateReviewErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$CreateReviewErrorImpl implements CreateReviewError {
  const _$CreateReviewErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateReview.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReviewErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReviewErrorImplCopyWith<_$CreateReviewErrorImpl> get copyWith =>
      __$$CreateReviewErrorImplCopyWithImpl<_$CreateReviewErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function(Review review) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text)? $default, {
    TResult? Function(Review review)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function(Review review)? successful,
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
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateReviewStart value)? $default, {
    TResult? Function(CreateReviewSuccessful value)? successful,
    TResult? Function(CreateReviewError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateReviewError implements CreateReview, ErrorAction {
  const factory CreateReviewError(final Object error, final StackTrace stackTrace) = _$CreateReviewErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$CreateReviewErrorImplCopyWith<_$CreateReviewErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
