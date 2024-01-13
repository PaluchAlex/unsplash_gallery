// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SetQuery {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetQueryCopyWith<SetQuery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetQueryCopyWith<$Res> {
  factory $SetQueryCopyWith(SetQuery value, $Res Function(SetQuery) then) = _$SetQueryCopyWithImpl<$Res, SetQuery>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SetQueryCopyWithImpl<$Res, $Val extends SetQuery> implements $SetQueryCopyWith<$Res> {
  _$SetQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetQuery$ImplCopyWith<$Res> implements $SetQueryCopyWith<$Res> {
  factory _$$SetQuery$ImplCopyWith(_$SetQuery$Impl value, $Res Function(_$SetQuery$Impl) then) =
      __$$SetQuery$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SetQuery$ImplCopyWithImpl<$Res> extends _$SetQueryCopyWithImpl<$Res, _$SetQuery$Impl>
    implements _$$SetQuery$ImplCopyWith<$Res> {
  __$$SetQuery$ImplCopyWithImpl(_$SetQuery$Impl _value, $Res Function(_$SetQuery$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SetQuery$Impl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetQuery$Impl implements SetQuery$ {
  const _$SetQuery$Impl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SetQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetQuery$Impl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetQuery$ImplCopyWith<_$SetQuery$Impl> get copyWith =>
      __$$SetQuery$ImplCopyWithImpl<_$SetQuery$Impl>(this, _$identity);
}

abstract class SetQuery$ implements SetQuery {
  const factory SetQuery$(final String query) = _$SetQuery$Impl;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$SetQuery$ImplCopyWith<_$SetQuery$Impl> get copyWith => throw _privateConstructorUsedError;
}
