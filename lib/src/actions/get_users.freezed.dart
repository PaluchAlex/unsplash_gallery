// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetUsers {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> uids) $default, {
    required TResult Function(List<AppUser> users) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<String> uids)? $default, {
    TResult? Function(List<AppUser> users)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> uids)? $default, {
    TResult Function(List<AppUser> users)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUsersStart value) $default, {
    required TResult Function(GetUsersSuccessful value) successful,
    required TResult Function(GetUsersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetUsersStart value)? $default, {
    TResult? Function(GetUsersSuccessful value)? successful,
    TResult? Function(GetUsersError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUsersStart value)? $default, {
    TResult Function(GetUsersSuccessful value)? successful,
    TResult Function(GetUsersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUsersCopyWith<$Res> {
  factory $GetUsersCopyWith(GetUsers value, $Res Function(GetUsers) then) = _$GetUsersCopyWithImpl<$Res, GetUsers>;
}

/// @nodoc
class _$GetUsersCopyWithImpl<$Res, $Val extends GetUsers> implements $GetUsersCopyWith<$Res> {
  _$GetUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUsersStartImplCopyWith<$Res> {
  factory _$$GetUsersStartImplCopyWith(_$GetUsersStartImpl value, $Res Function(_$GetUsersStartImpl) then) =
      __$$GetUsersStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> uids});
}

/// @nodoc
class __$$GetUsersStartImplCopyWithImpl<$Res> extends _$GetUsersCopyWithImpl<$Res, _$GetUsersStartImpl>
    implements _$$GetUsersStartImplCopyWith<$Res> {
  __$$GetUsersStartImplCopyWithImpl(_$GetUsersStartImpl _value, $Res Function(_$GetUsersStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uids = null,
  }) {
    return _then(_$GetUsersStartImpl(
      null == uids
          ? _value._uids
          : uids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetUsersStartImpl implements GetUsersStart {
  const _$GetUsersStartImpl(final List<String> uids) : _uids = uids;

  final List<String> _uids;
  @override
  List<String> get uids {
    if (_uids is EqualUnmodifiableListView) return _uids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uids);
  }

  @override
  String toString() {
    return 'GetUsers(uids: $uids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersStartImpl &&
            const DeepCollectionEquality().equals(other._uids, _uids));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_uids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersStartImplCopyWith<_$GetUsersStartImpl> get copyWith =>
      __$$GetUsersStartImplCopyWithImpl<_$GetUsersStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> uids) $default, {
    required TResult Function(List<AppUser> users) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(uids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<String> uids)? $default, {
    TResult? Function(List<AppUser> users)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(uids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> uids)? $default, {
    TResult Function(List<AppUser> users)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUsersStart value) $default, {
    required TResult Function(GetUsersSuccessful value) successful,
    required TResult Function(GetUsersError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetUsersStart value)? $default, {
    TResult? Function(GetUsersSuccessful value)? successful,
    TResult? Function(GetUsersError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUsersStart value)? $default, {
    TResult Function(GetUsersSuccessful value)? successful,
    TResult Function(GetUsersError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetUsersStart implements GetUsers {
  const factory GetUsersStart(final List<String> uids) = _$GetUsersStartImpl;

  List<String> get uids;
  @JsonKey(ignore: true)
  _$$GetUsersStartImplCopyWith<_$GetUsersStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUsersSuccessfulImplCopyWith<$Res> {
  factory _$$GetUsersSuccessfulImplCopyWith(
          _$GetUsersSuccessfulImpl value, $Res Function(_$GetUsersSuccessfulImpl) then) =
      __$$GetUsersSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppUser> users});
}

/// @nodoc
class __$$GetUsersSuccessfulImplCopyWithImpl<$Res> extends _$GetUsersCopyWithImpl<$Res, _$GetUsersSuccessfulImpl>
    implements _$$GetUsersSuccessfulImplCopyWith<$Res> {
  __$$GetUsersSuccessfulImplCopyWithImpl(_$GetUsersSuccessfulImpl _value, $Res Function(_$GetUsersSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$GetUsersSuccessfulImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
    ));
  }
}

/// @nodoc

class _$GetUsersSuccessfulImpl implements GetUsersSuccessful {
  const _$GetUsersSuccessfulImpl(final List<AppUser> users) : _users = users;

  final List<AppUser> _users;
  @override
  List<AppUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'GetUsers.successful(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersSuccessfulImplCopyWith<_$GetUsersSuccessfulImpl> get copyWith =>
      __$$GetUsersSuccessfulImplCopyWithImpl<_$GetUsersSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> uids) $default, {
    required TResult Function(List<AppUser> users) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<String> uids)? $default, {
    TResult? Function(List<AppUser> users)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> uids)? $default, {
    TResult Function(List<AppUser> users)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUsersStart value) $default, {
    required TResult Function(GetUsersSuccessful value) successful,
    required TResult Function(GetUsersError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetUsersStart value)? $default, {
    TResult? Function(GetUsersSuccessful value)? successful,
    TResult? Function(GetUsersError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUsersStart value)? $default, {
    TResult Function(GetUsersSuccessful value)? successful,
    TResult Function(GetUsersError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetUsersSuccessful implements GetUsers {
  const factory GetUsersSuccessful(final List<AppUser> users) = _$GetUsersSuccessfulImpl;

  List<AppUser> get users;
  @JsonKey(ignore: true)
  _$$GetUsersSuccessfulImplCopyWith<_$GetUsersSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUsersErrorImplCopyWith<$Res> {
  factory _$$GetUsersErrorImplCopyWith(_$GetUsersErrorImpl value, $Res Function(_$GetUsersErrorImpl) then) =
      __$$GetUsersErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetUsersErrorImplCopyWithImpl<$Res> extends _$GetUsersCopyWithImpl<$Res, _$GetUsersErrorImpl>
    implements _$$GetUsersErrorImplCopyWith<$Res> {
  __$$GetUsersErrorImplCopyWithImpl(_$GetUsersErrorImpl _value, $Res Function(_$GetUsersErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetUsersErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetUsersErrorImpl implements GetUsersError {
  const _$GetUsersErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetUsers.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersErrorImplCopyWith<_$GetUsersErrorImpl> get copyWith =>
      __$$GetUsersErrorImplCopyWithImpl<_$GetUsersErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> uids) $default, {
    required TResult Function(List<AppUser> users) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<String> uids)? $default, {
    TResult? Function(List<AppUser> users)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> uids)? $default, {
    TResult Function(List<AppUser> users)? successful,
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
    TResult Function(GetUsersStart value) $default, {
    required TResult Function(GetUsersSuccessful value) successful,
    required TResult Function(GetUsersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetUsersStart value)? $default, {
    TResult? Function(GetUsersSuccessful value)? successful,
    TResult? Function(GetUsersError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUsersStart value)? $default, {
    TResult Function(GetUsersSuccessful value)? successful,
    TResult Function(GetUsersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetUsersError implements GetUsers, ErrorAction {
  const factory GetUsersError(final Object error, final StackTrace stackTrace) = _$GetUsersErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetUsersErrorImplCopyWith<_$GetUsersErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
