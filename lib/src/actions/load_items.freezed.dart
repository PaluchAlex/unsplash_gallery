// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadItems {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String color) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String color)? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String color)? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoadItemsStart value) $default, {
    required TResult Function(LoadItemsSuccessful value) successful,
    required TResult Function(LoadItemsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoadItemsStart value)? $default, {
    TResult? Function(LoadItemsSuccessful value)? successful,
    TResult? Function(LoadItemsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoadItemsStart value)? $default, {
    TResult Function(LoadItemsSuccessful value)? successful,
    TResult Function(LoadItemsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadItemsCopyWith<$Res> {
  factory $LoadItemsCopyWith(LoadItems value, $Res Function(LoadItems) then) = _$LoadItemsCopyWithImpl<$Res, LoadItems>;
}

/// @nodoc
class _$LoadItemsCopyWithImpl<$Res, $Val extends LoadItems> implements $LoadItemsCopyWith<$Res> {
  _$LoadItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadItemsStartImplCopyWith<$Res> {
  factory _$$LoadItemsStartImplCopyWith(_$LoadItemsStartImpl value, $Res Function(_$LoadItemsStartImpl) then) =
      __$$LoadItemsStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String color});
}

/// @nodoc
class __$$LoadItemsStartImplCopyWithImpl<$Res> extends _$LoadItemsCopyWithImpl<$Res, _$LoadItemsStartImpl>
    implements _$$LoadItemsStartImplCopyWith<$Res> {
  __$$LoadItemsStartImplCopyWithImpl(_$LoadItemsStartImpl _value, $Res Function(_$LoadItemsStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$LoadItemsStartImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadItemsStartImpl implements LoadItemsStart {
  const _$LoadItemsStartImpl({this.color = ''});

  @override
  @JsonKey()
  final String color;

  @override
  String toString() {
    return 'LoadItems(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadItemsStartImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadItemsStartImplCopyWith<_$LoadItemsStartImpl> get copyWith =>
      __$$LoadItemsStartImplCopyWithImpl<_$LoadItemsStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String color) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String color)? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String color)? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoadItemsStart value) $default, {
    required TResult Function(LoadItemsSuccessful value) successful,
    required TResult Function(LoadItemsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoadItemsStart value)? $default, {
    TResult? Function(LoadItemsSuccessful value)? successful,
    TResult? Function(LoadItemsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoadItemsStart value)? $default, {
    TResult Function(LoadItemsSuccessful value)? successful,
    TResult Function(LoadItemsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LoadItemsStart implements LoadItems {
  const factory LoadItemsStart({final String color}) = _$LoadItemsStartImpl;

  String get color;
  @JsonKey(ignore: true)
  _$$LoadItemsStartImplCopyWith<_$LoadItemsStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadItemsSuccessfulImplCopyWith<$Res> {
  factory _$$LoadItemsSuccessfulImplCopyWith(
          _$LoadItemsSuccessfulImpl value, $Res Function(_$LoadItemsSuccessfulImpl) then) =
      __$$LoadItemsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Photo> photos});
}

/// @nodoc
class __$$LoadItemsSuccessfulImplCopyWithImpl<$Res> extends _$LoadItemsCopyWithImpl<$Res, _$LoadItemsSuccessfulImpl>
    implements _$$LoadItemsSuccessfulImplCopyWith<$Res> {
  __$$LoadItemsSuccessfulImplCopyWithImpl(
      _$LoadItemsSuccessfulImpl _value, $Res Function(_$LoadItemsSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$LoadItemsSuccessfulImpl(
      null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$LoadItemsSuccessfulImpl implements LoadItemsSuccessful {
  const _$LoadItemsSuccessfulImpl(final List<Photo> photos) : _photos = photos;

  final List<Photo> _photos;
  @override
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'LoadItems.successful(photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadItemsSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadItemsSuccessfulImplCopyWith<_$LoadItemsSuccessfulImpl> get copyWith =>
      __$$LoadItemsSuccessfulImplCopyWithImpl<_$LoadItemsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String color) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String color)? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String color)? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoadItemsStart value) $default, {
    required TResult Function(LoadItemsSuccessful value) successful,
    required TResult Function(LoadItemsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoadItemsStart value)? $default, {
    TResult? Function(LoadItemsSuccessful value)? successful,
    TResult? Function(LoadItemsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoadItemsStart value)? $default, {
    TResult Function(LoadItemsSuccessful value)? successful,
    TResult Function(LoadItemsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoadItemsSuccessful implements LoadItems {
  const factory LoadItemsSuccessful(final List<Photo> photos) = _$LoadItemsSuccessfulImpl;

  List<Photo> get photos;
  @JsonKey(ignore: true)
  _$$LoadItemsSuccessfulImplCopyWith<_$LoadItemsSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadItemsErrorImplCopyWith<$Res> {
  factory _$$LoadItemsErrorImplCopyWith(_$LoadItemsErrorImpl value, $Res Function(_$LoadItemsErrorImpl) then) =
      __$$LoadItemsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LoadItemsErrorImplCopyWithImpl<$Res> extends _$LoadItemsCopyWithImpl<$Res, _$LoadItemsErrorImpl>
    implements _$$LoadItemsErrorImplCopyWith<$Res> {
  __$$LoadItemsErrorImplCopyWithImpl(_$LoadItemsErrorImpl _value, $Res Function(_$LoadItemsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LoadItemsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LoadItemsErrorImpl implements LoadItemsError {
  const _$LoadItemsErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'LoadItems.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadItemsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadItemsErrorImplCopyWith<_$LoadItemsErrorImpl> get copyWith =>
      __$$LoadItemsErrorImplCopyWithImpl<_$LoadItemsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String color) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String color)? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String color)? $default, {
    TResult Function(List<Photo> photos)? successful,
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
    TResult Function(LoadItemsStart value) $default, {
    required TResult Function(LoadItemsSuccessful value) successful,
    required TResult Function(LoadItemsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoadItemsStart value)? $default, {
    TResult? Function(LoadItemsSuccessful value)? successful,
    TResult? Function(LoadItemsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoadItemsStart value)? $default, {
    TResult Function(LoadItemsSuccessful value)? successful,
    TResult Function(LoadItemsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoadItemsError implements LoadItems, ErrorAction {
  const factory LoadItemsError(final Object error, final StackTrace stackTrace) = _$LoadItemsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$LoadItemsErrorImplCopyWith<_$LoadItemsErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
