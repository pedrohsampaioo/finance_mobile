// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  UserStarted started() {
    return const UserStarted();
  }

// ignore: unused_element
  UserLoadInProgress loadInProgress() {
    return const UserLoadInProgress();
  }

// ignore: unused_element
  UserLoadSuccess loadSuccess(UserModel user) {
    return UserLoadSuccess(
      user,
    );
  }

// ignore: unused_element
  UserLoadFailure loadFailure(Failure failure) {
    return UserLoadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $UserState = _$UserStateTearOff();

mixin _$UserState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(UserModel user),
    @required Result loadFailure(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(UserModel user),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(UserStarted value),
    @required Result loadInProgress(UserLoadInProgress value),
    @required Result loadSuccess(UserLoadSuccess value),
    @required Result loadFailure(UserLoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(UserStarted value),
    Result loadInProgress(UserLoadInProgress value),
    Result loadSuccess(UserLoadSuccess value),
    Result loadFailure(UserLoadFailure value),
    @required Result orElse(),
  });
}

abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

abstract class $UserStartedCopyWith<$Res> {
  factory $UserStartedCopyWith(
          UserStarted value, $Res Function(UserStarted) then) =
      _$UserStartedCopyWithImpl<$Res>;
}

class _$UserStartedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserStartedCopyWith<$Res> {
  _$UserStartedCopyWithImpl(
      UserStarted _value, $Res Function(UserStarted) _then)
      : super(_value, (v) => _then(v as UserStarted));

  @override
  UserStarted get _value => super._value as UserStarted;
}

class _$UserStarted implements UserStarted {
  const _$UserStarted();

  @override
  String toString() {
    return 'UserState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(UserModel user),
    @required Result loadFailure(Failure failure),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(UserModel user),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(UserStarted value),
    @required Result loadInProgress(UserLoadInProgress value),
    @required Result loadSuccess(UserLoadSuccess value),
    @required Result loadFailure(UserLoadFailure value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(UserStarted value),
    Result loadInProgress(UserLoadInProgress value),
    Result loadSuccess(UserLoadSuccess value),
    Result loadFailure(UserLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class UserStarted implements UserState {
  const factory UserStarted() = _$UserStarted;
}

abstract class $UserLoadInProgressCopyWith<$Res> {
  factory $UserLoadInProgressCopyWith(
          UserLoadInProgress value, $Res Function(UserLoadInProgress) then) =
      _$UserLoadInProgressCopyWithImpl<$Res>;
}

class _$UserLoadInProgressCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements $UserLoadInProgressCopyWith<$Res> {
  _$UserLoadInProgressCopyWithImpl(
      UserLoadInProgress _value, $Res Function(UserLoadInProgress) _then)
      : super(_value, (v) => _then(v as UserLoadInProgress));

  @override
  UserLoadInProgress get _value => super._value as UserLoadInProgress;
}

class _$UserLoadInProgress implements UserLoadInProgress {
  const _$UserLoadInProgress();

  @override
  String toString() {
    return 'UserState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(UserModel user),
    @required Result loadFailure(Failure failure),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(UserModel user),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(UserStarted value),
    @required Result loadInProgress(UserLoadInProgress value),
    @required Result loadSuccess(UserLoadSuccess value),
    @required Result loadFailure(UserLoadFailure value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(UserStarted value),
    Result loadInProgress(UserLoadInProgress value),
    Result loadSuccess(UserLoadSuccess value),
    Result loadFailure(UserLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class UserLoadInProgress implements UserState {
  const factory UserLoadInProgress() = _$UserLoadInProgress;
}

abstract class $UserLoadSuccessCopyWith<$Res> {
  factory $UserLoadSuccessCopyWith(
          UserLoadSuccess value, $Res Function(UserLoadSuccess) then) =
      _$UserLoadSuccessCopyWithImpl<$Res>;
  $Res call({UserModel user});
}

class _$UserLoadSuccessCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserLoadSuccessCopyWith<$Res> {
  _$UserLoadSuccessCopyWithImpl(
      UserLoadSuccess _value, $Res Function(UserLoadSuccess) _then)
      : super(_value, (v) => _then(v as UserLoadSuccess));

  @override
  UserLoadSuccess get _value => super._value as UserLoadSuccess;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserLoadSuccess(
      user == freezed ? _value.user : user as UserModel,
    ));
  }
}

class _$UserLoadSuccess implements UserLoadSuccess {
  const _$UserLoadSuccess(this.user) : assert(user != null);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserState.loadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserLoadSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $UserLoadSuccessCopyWith<UserLoadSuccess> get copyWith =>
      _$UserLoadSuccessCopyWithImpl<UserLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(UserModel user),
    @required Result loadFailure(Failure failure),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(UserModel user),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(UserStarted value),
    @required Result loadInProgress(UserLoadInProgress value),
    @required Result loadSuccess(UserLoadSuccess value),
    @required Result loadFailure(UserLoadFailure value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(UserStarted value),
    Result loadInProgress(UserLoadInProgress value),
    Result loadSuccess(UserLoadSuccess value),
    Result loadFailure(UserLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class UserLoadSuccess implements UserState {
  const factory UserLoadSuccess(UserModel user) = _$UserLoadSuccess;

  UserModel get user;
  $UserLoadSuccessCopyWith<UserLoadSuccess> get copyWith;
}

abstract class $UserLoadFailureCopyWith<$Res> {
  factory $UserLoadFailureCopyWith(
          UserLoadFailure value, $Res Function(UserLoadFailure) then) =
      _$UserLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$UserLoadFailureCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserLoadFailureCopyWith<$Res> {
  _$UserLoadFailureCopyWithImpl(
      UserLoadFailure _value, $Res Function(UserLoadFailure) _then)
      : super(_value, (v) => _then(v as UserLoadFailure));

  @override
  UserLoadFailure get _value => super._value as UserLoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(UserLoadFailure(
      failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$UserLoadFailure implements UserLoadFailure {
  const _$UserLoadFailure(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UserState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $UserLoadFailureCopyWith<UserLoadFailure> get copyWith =>
      _$UserLoadFailureCopyWithImpl<UserLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(UserModel user),
    @required Result loadFailure(Failure failure),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(UserModel user),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(UserStarted value),
    @required Result loadInProgress(UserLoadInProgress value),
    @required Result loadSuccess(UserLoadSuccess value),
    @required Result loadFailure(UserLoadFailure value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(UserStarted value),
    Result loadInProgress(UserLoadInProgress value),
    Result loadSuccess(UserLoadSuccess value),
    Result loadFailure(UserLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class UserLoadFailure implements UserState {
  const factory UserLoadFailure(Failure failure) = _$UserLoadFailure;

  Failure get failure;
  $UserLoadFailureCopyWith<UserLoadFailure> get copyWith;
}
