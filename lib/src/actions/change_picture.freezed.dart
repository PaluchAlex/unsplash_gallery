// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePicture {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String path) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String path)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String path)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangePictureStart value) $default, {
    required TResult Function(ChangePictureSuccessful value) successful,
    required TResult Function(ChangePictureError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangePictureStart value)? $default, {
    TResult? Function(ChangePictureSuccessful value)? successful,
    TResult? Function(ChangePictureError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangePictureStart value)? $default, {
    TResult Function(ChangePictureSuccessful value)? successful,
    TResult Function(ChangePictureError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePictureCopyWith<$Res> {
  factory $ChangePictureCopyWith(ChangePicture value, $Res Function(ChangePicture) then) =
      _$ChangePictureCopyWithImpl<$Res, ChangePicture>;
}

/// @nodoc
class _$ChangePictureCopyWithImpl<$Res, $Val extends ChangePicture> implements $ChangePictureCopyWith<$Res> {
  _$ChangePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangePictureStartImplCopyWith<$Res> {
  factory _$$ChangePictureStartImplCopyWith(
          _$ChangePictureStartImpl value, $Res Function(_$ChangePictureStartImpl) then) =
      __$$ChangePictureStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ChangePictureStartImplCopyWithImpl<$Res> extends _$ChangePictureCopyWithImpl<$Res, _$ChangePictureStartImpl>
    implements _$$ChangePictureStartImplCopyWith<$Res> {
  __$$ChangePictureStartImplCopyWithImpl(_$ChangePictureStartImpl _value, $Res Function(_$ChangePictureStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ChangePictureStartImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePictureStartImpl implements ChangePictureStart {
  const _$ChangePictureStartImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ChangePicture(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePictureStartImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePictureStartImplCopyWith<_$ChangePictureStartImpl> get copyWith =>
      __$$ChangePictureStartImplCopyWithImpl<_$ChangePictureStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String path) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String path)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String path)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangePictureStart value) $default, {
    required TResult Function(ChangePictureSuccessful value) successful,
    required TResult Function(ChangePictureError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangePictureStart value)? $default, {
    TResult? Function(ChangePictureSuccessful value)? successful,
    TResult? Function(ChangePictureError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangePictureStart value)? $default, {
    TResult Function(ChangePictureSuccessful value)? successful,
    TResult Function(ChangePictureError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ChangePictureStart implements ChangePicture {
  const factory ChangePictureStart(final String path) = _$ChangePictureStartImpl;

  String get path;
  @JsonKey(ignore: true)
  _$$ChangePictureStartImplCopyWith<_$ChangePictureStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePictureSuccessfulImplCopyWith<$Res> {
  factory _$$ChangePictureSuccessfulImplCopyWith(
          _$ChangePictureSuccessfulImpl value, $Res Function(_$ChangePictureSuccessfulImpl) then) =
      __$$ChangePictureSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChangePictureSuccessfulImplCopyWithImpl<$Res>
    extends _$ChangePictureCopyWithImpl<$Res, _$ChangePictureSuccessfulImpl>
    implements _$$ChangePictureSuccessfulImplCopyWith<$Res> {
  __$$ChangePictureSuccessfulImplCopyWithImpl(
      _$ChangePictureSuccessfulImpl _value, $Res Function(_$ChangePictureSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ChangePictureSuccessfulImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ChangePictureSuccessfulImpl implements ChangePictureSuccessful {
  const _$ChangePictureSuccessfulImpl(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'ChangePicture.successful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePictureSuccessfulImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePictureSuccessfulImplCopyWith<_$ChangePictureSuccessfulImpl> get copyWith =>
      __$$ChangePictureSuccessfulImplCopyWithImpl<_$ChangePictureSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String path) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String path)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String path)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangePictureStart value) $default, {
    required TResult Function(ChangePictureSuccessful value) successful,
    required TResult Function(ChangePictureError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangePictureStart value)? $default, {
    TResult? Function(ChangePictureSuccessful value)? successful,
    TResult? Function(ChangePictureError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangePictureStart value)? $default, {
    TResult Function(ChangePictureSuccessful value)? successful,
    TResult Function(ChangePictureError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ChangePictureSuccessful implements ChangePicture {
  const factory ChangePictureSuccessful(final AppUser user) = _$ChangePictureSuccessfulImpl;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$ChangePictureSuccessfulImplCopyWith<_$ChangePictureSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePictureErrorImplCopyWith<$Res> {
  factory _$$ChangePictureErrorImplCopyWith(
          _$ChangePictureErrorImpl value, $Res Function(_$ChangePictureErrorImpl) then) =
      __$$ChangePictureErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$ChangePictureErrorImplCopyWithImpl<$Res> extends _$ChangePictureCopyWithImpl<$Res, _$ChangePictureErrorImpl>
    implements _$$ChangePictureErrorImplCopyWith<$Res> {
  __$$ChangePictureErrorImplCopyWithImpl(_$ChangePictureErrorImpl _value, $Res Function(_$ChangePictureErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ChangePictureErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ChangePictureErrorImpl implements ChangePictureError {
  const _$ChangePictureErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ChangePicture.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePictureErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePictureErrorImplCopyWith<_$ChangePictureErrorImpl> get copyWith =>
      __$$ChangePictureErrorImplCopyWithImpl<_$ChangePictureErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String path) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String path)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String path)? $default, {
    TResult Function(AppUser user)? successful,
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
    TResult Function(ChangePictureStart value) $default, {
    required TResult Function(ChangePictureSuccessful value) successful,
    required TResult Function(ChangePictureError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangePictureStart value)? $default, {
    TResult? Function(ChangePictureSuccessful value)? successful,
    TResult? Function(ChangePictureError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangePictureStart value)? $default, {
    TResult Function(ChangePictureSuccessful value)? successful,
    TResult Function(ChangePictureError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChangePictureError implements ChangePicture, ErrorAction {
  const factory ChangePictureError(final Object error, final StackTrace stackTrace) = _$ChangePictureErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ChangePictureErrorImplCopyWith<_$ChangePictureErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
