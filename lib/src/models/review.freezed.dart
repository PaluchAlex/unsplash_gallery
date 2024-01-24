// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return Review$.fromJson(json);
}

/// @nodoc
mixin _$Review {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) = _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call({String id, String text, String uid, DateTime createdAt});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? uid = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Review$ImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$Review$ImplCopyWith(_$Review$Impl value, $Res Function(_$Review$Impl) then) =
      __$$Review$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text, String uid, DateTime createdAt});
}

/// @nodoc
class __$$Review$ImplCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res, _$Review$Impl>
    implements _$$Review$ImplCopyWith<$Res> {
  __$$Review$ImplCopyWithImpl(_$Review$Impl _value, $Res Function(_$Review$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? uid = null,
    Object? createdAt = null,
  }) {
    return _then(_$Review$Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Review$Impl implements Review$ {
  const _$Review$Impl({required this.id, required this.text, required this.uid, required this.createdAt});

  factory _$Review$Impl.fromJson(Map<String, dynamic> json) => _$$Review$ImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final String uid;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Review(id: $id, text: $text, uid: $uid, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Review$Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, uid, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Review$ImplCopyWith<_$Review$Impl> get copyWith => __$$Review$ImplCopyWithImpl<_$Review$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Review$ImplToJson(
      this,
    );
  }
}

abstract class Review$ implements Review {
  const factory Review$(
      {required final String id,
      required final String text,
      required final String uid,
      required final DateTime createdAt}) = _$Review$Impl;

  factory Review$.fromJson(Map<String, dynamic> json) = _$Review$Impl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String get uid;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$Review$ImplCopyWith<_$Review$Impl> get copyWith => throw _privateConstructorUsedError;
}
