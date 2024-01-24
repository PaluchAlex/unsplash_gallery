// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoUser _$PhotoUserFromJson(Map<String, dynamic> json) {
  return PhotoUser$.fromJson(json);
}

/// @nodoc
mixin _$PhotoUser {
  UserLinks get links => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoUserCopyWith<PhotoUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoUserCopyWith<$Res> {
  factory $PhotoUserCopyWith(PhotoUser value, $Res Function(PhotoUser) then) =
      _$PhotoUserCopyWithImpl<$Res, PhotoUser>;
  @useResult
  $Res call({UserLinks links, String name});

  $UserLinksCopyWith<$Res> get links;
}

/// @nodoc
class _$PhotoUserCopyWithImpl<$Res, $Val extends PhotoUser>
    implements $PhotoUserCopyWith<$Res> {
  _$PhotoUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UserLinks,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLinksCopyWith<$Res> get links {
    return $UserLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhotoUser$ImplCopyWith<$Res>
    implements $PhotoUserCopyWith<$Res> {
  factory _$$PhotoUser$ImplCopyWith(
          _$PhotoUser$Impl value, $Res Function(_$PhotoUser$Impl) then) =
      __$$PhotoUser$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserLinks links, String name});

  @override
  $UserLinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$PhotoUser$ImplCopyWithImpl<$Res>
    extends _$PhotoUserCopyWithImpl<$Res, _$PhotoUser$Impl>
    implements _$$PhotoUser$ImplCopyWith<$Res> {
  __$$PhotoUser$ImplCopyWithImpl(
      _$PhotoUser$Impl _value, $Res Function(_$PhotoUser$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = null,
    Object? name = null,
  }) {
    return _then(_$PhotoUser$Impl(
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UserLinks,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoUser$Impl implements PhotoUser$ {
  const _$PhotoUser$Impl({required this.links, required this.name});

  factory _$PhotoUser$Impl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoUser$ImplFromJson(json);

  @override
  final UserLinks links;
  @override
  final String name;

  @override
  String toString() {
    return 'PhotoUser(links: $links, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoUser$Impl &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, links, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoUser$ImplCopyWith<_$PhotoUser$Impl> get copyWith =>
      __$$PhotoUser$ImplCopyWithImpl<_$PhotoUser$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoUser$ImplToJson(
      this,
    );
  }
}

abstract class PhotoUser$ implements PhotoUser {
  const factory PhotoUser$(
      {required final UserLinks links,
      required final String name}) = _$PhotoUser$Impl;

  factory PhotoUser$.fromJson(Map<String, dynamic> json) =
      _$PhotoUser$Impl.fromJson;

  @override
  UserLinks get links;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PhotoUser$ImplCopyWith<_$PhotoUser$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
