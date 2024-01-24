// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoUrls _$PhotoUrlsFromJson(Map<String, dynamic> json) {
  return PhotoUrls$.fromJson(json);
}

/// @nodoc
mixin _$PhotoUrls {
  String get small => throw _privateConstructorUsedError;
  String get regular => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoUrlsCopyWith<PhotoUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoUrlsCopyWith<$Res> {
  factory $PhotoUrlsCopyWith(PhotoUrls value, $Res Function(PhotoUrls) then) =
      _$PhotoUrlsCopyWithImpl<$Res, PhotoUrls>;
  @useResult
  $Res call({String small, String regular});
}

/// @nodoc
class _$PhotoUrlsCopyWithImpl<$Res, $Val extends PhotoUrls>
    implements $PhotoUrlsCopyWith<$Res> {
  _$PhotoUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? regular = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoUrls$ImplCopyWith<$Res>
    implements $PhotoUrlsCopyWith<$Res> {
  factory _$$PhotoUrls$ImplCopyWith(
          _$PhotoUrls$Impl value, $Res Function(_$PhotoUrls$Impl) then) =
      __$$PhotoUrls$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String small, String regular});
}

/// @nodoc
class __$$PhotoUrls$ImplCopyWithImpl<$Res>
    extends _$PhotoUrlsCopyWithImpl<$Res, _$PhotoUrls$Impl>
    implements _$$PhotoUrls$ImplCopyWith<$Res> {
  __$$PhotoUrls$ImplCopyWithImpl(
      _$PhotoUrls$Impl _value, $Res Function(_$PhotoUrls$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? regular = null,
  }) {
    return _then(_$PhotoUrls$Impl(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoUrls$Impl implements PhotoUrls$ {
  const _$PhotoUrls$Impl({required this.small, required this.regular});

  factory _$PhotoUrls$Impl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoUrls$ImplFromJson(json);

  @override
  final String small;
  @override
  final String regular;

  @override
  String toString() {
    return 'PhotoUrls(small: $small, regular: $regular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoUrls$Impl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.regular, regular) || other.regular == regular));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, regular);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoUrls$ImplCopyWith<_$PhotoUrls$Impl> get copyWith =>
      __$$PhotoUrls$ImplCopyWithImpl<_$PhotoUrls$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoUrls$ImplToJson(
      this,
    );
  }
}

abstract class PhotoUrls$ implements PhotoUrls {
  const factory PhotoUrls$(
      {required final String small,
      required final String regular}) = _$PhotoUrls$Impl;

  factory PhotoUrls$.fromJson(Map<String, dynamic> json) =
      _$PhotoUrls$Impl.fromJson;

  @override
  String get small;
  @override
  String get regular;
  @override
  @JsonKey(ignore: true)
  _$$PhotoUrls$ImplCopyWith<_$PhotoUrls$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
