// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return Photo$.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  PhotoUrls get urls => throw _privateConstructorUsedError;
  @JsonKey(name: 'alt_description')
  String get description => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  PhotoUser get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) = _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call({PhotoUrls urls, @JsonKey(name: 'alt_description') String description, int likes, PhotoUser user});

  $PhotoUrlsCopyWith<$Res> get urls;
  $PhotoUserCopyWith<$Res> get user;
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = null,
    Object? description = null,
    Object? likes = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as PhotoUrls,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as PhotoUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoUrlsCopyWith<$Res> get urls {
    return $PhotoUrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoUserCopyWith<$Res> get user {
    return $PhotoUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Photo$ImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$Photo$ImplCopyWith(_$Photo$Impl value, $Res Function(_$Photo$Impl) then) =
      __$$Photo$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PhotoUrls urls, @JsonKey(name: 'alt_description') String description, int likes, PhotoUser user});

  @override
  $PhotoUrlsCopyWith<$Res> get urls;
  @override
  $PhotoUserCopyWith<$Res> get user;
}

/// @no doc
class __$$Photo$ImplCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res, _$Photo$Impl>
    implements _$$Photo$ImplCopyWith<$Res> {
  __$$Photo$ImplCopyWithImpl(_$Photo$Impl _value, $Res Function(_$Photo$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = null,
    Object? description = null,
    Object? likes = null,
    Object? user = null,
  }) {
    return _then(_$Photo$Impl(
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as PhotoUrls,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as PhotoUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Photo$Impl implements Photo$ {
  const _$Photo$Impl(
      {required this.urls,
      @JsonKey(name: 'alt_description') this.description = '',
      required this.likes,
      required this.user});

  factory _$Photo$Impl.fromJson(Map<String, dynamic> json) => _$$Photo$ImplFromJson(json);

  @override
  final PhotoUrls urls;
  @override
  @JsonKey(name: 'alt_description')
  final String description;
  @override
  final int likes;
  @override
  final PhotoUser user;

  @override
  String toString() {
    return 'Photo(urls: $urls, description: $description, likes: $likes, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Photo$Impl &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, urls, description, likes, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Photo$ImplCopyWith<_$Photo$Impl> get copyWith => __$$Photo$ImplCopyWithImpl<_$Photo$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Photo$ImplToJson(
      this,
    );
  }
}

abstract class Photo$ implements Photo {
  const factory Photo$(
      {required final PhotoUrls urls,
      @JsonKey(name: 'alt_description') final String description,
      required final int likes,
      required final PhotoUser user}) = _$Photo$Impl;

  factory Photo$.fromJson(Map<String, dynamic> json) = _$Photo$Impl.fromJson;

  @override
  PhotoUrls get urls;
  @override
  @JsonKey(name: 'alt_description')
  String get description;
  @override
  int get likes;
  @override
  PhotoUser get user;
  @override
  @JsonKey(ignore: true)
  _$$Photo$ImplCopyWith<_$Photo$Impl> get copyWith => throw _privateConstructorUsedError;
}
