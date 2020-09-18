// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

// ignore: unused_element
  TransactionStarted started() {
    return const TransactionStarted();
  }

// ignore: unused_element
  TransactionLoadInProgress loadInProgress() {
    return const TransactionLoadInProgress();
  }

// ignore: unused_element
  TransactionLoadSuccess loadSuccess(List<TransactionModel> transactions) {
    return TransactionLoadSuccess(
      transactions,
    );
  }

// ignore: unused_element
  TransactionLoadFailure loadFailure(Failure failure) {
    return TransactionLoadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $TransactionState = _$TransactionStateTearOff();

mixin _$TransactionState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<TransactionModel> transactions),
    @required Result loadFailure(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(List<TransactionModel> transactions),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(TransactionStarted value),
    @required Result loadInProgress(TransactionLoadInProgress value),
    @required Result loadSuccess(TransactionLoadSuccess value),
    @required Result loadFailure(TransactionLoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(TransactionStarted value),
    Result loadInProgress(TransactionLoadInProgress value),
    Result loadSuccess(TransactionLoadSuccess value),
    Result loadFailure(TransactionLoadFailure value),
    @required Result orElse(),
  });
}

abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res>;
}

class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;
}

abstract class $TransactionStartedCopyWith<$Res> {
  factory $TransactionStartedCopyWith(
          TransactionStarted value, $Res Function(TransactionStarted) then) =
      _$TransactionStartedCopyWithImpl<$Res>;
}

class _$TransactionStartedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStartedCopyWith<$Res> {
  _$TransactionStartedCopyWithImpl(
      TransactionStarted _value, $Res Function(TransactionStarted) _then)
      : super(_value, (v) => _then(v as TransactionStarted));

  @override
  TransactionStarted get _value => super._value as TransactionStarted;
}

class _$TransactionStarted implements TransactionStarted {
  const _$TransactionStarted();

  @override
  String toString() {
    return 'TransactionState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TransactionStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<TransactionModel> transactions),
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
    Result loadSuccess(List<TransactionModel> transactions),
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
    @required Result started(TransactionStarted value),
    @required Result loadInProgress(TransactionLoadInProgress value),
    @required Result loadSuccess(TransactionLoadSuccess value),
    @required Result loadFailure(TransactionLoadFailure value),
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
    Result started(TransactionStarted value),
    Result loadInProgress(TransactionLoadInProgress value),
    Result loadSuccess(TransactionLoadSuccess value),
    Result loadFailure(TransactionLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TransactionStarted implements TransactionState {
  const factory TransactionStarted() = _$TransactionStarted;
}

abstract class $TransactionLoadInProgressCopyWith<$Res> {
  factory $TransactionLoadInProgressCopyWith(TransactionLoadInProgress value,
          $Res Function(TransactionLoadInProgress) then) =
      _$TransactionLoadInProgressCopyWithImpl<$Res>;
}

class _$TransactionLoadInProgressCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionLoadInProgressCopyWith<$Res> {
  _$TransactionLoadInProgressCopyWithImpl(TransactionLoadInProgress _value,
      $Res Function(TransactionLoadInProgress) _then)
      : super(_value, (v) => _then(v as TransactionLoadInProgress));

  @override
  TransactionLoadInProgress get _value =>
      super._value as TransactionLoadInProgress;
}

class _$TransactionLoadInProgress implements TransactionLoadInProgress {
  const _$TransactionLoadInProgress();

  @override
  String toString() {
    return 'TransactionState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TransactionLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<TransactionModel> transactions),
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
    Result loadSuccess(List<TransactionModel> transactions),
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
    @required Result started(TransactionStarted value),
    @required Result loadInProgress(TransactionLoadInProgress value),
    @required Result loadSuccess(TransactionLoadSuccess value),
    @required Result loadFailure(TransactionLoadFailure value),
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
    Result started(TransactionStarted value),
    Result loadInProgress(TransactionLoadInProgress value),
    Result loadSuccess(TransactionLoadSuccess value),
    Result loadFailure(TransactionLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class TransactionLoadInProgress implements TransactionState {
  const factory TransactionLoadInProgress() = _$TransactionLoadInProgress;
}

abstract class $TransactionLoadSuccessCopyWith<$Res> {
  factory $TransactionLoadSuccessCopyWith(TransactionLoadSuccess value,
          $Res Function(TransactionLoadSuccess) then) =
      _$TransactionLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<TransactionModel> transactions});
}

class _$TransactionLoadSuccessCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionLoadSuccessCopyWith<$Res> {
  _$TransactionLoadSuccessCopyWithImpl(TransactionLoadSuccess _value,
      $Res Function(TransactionLoadSuccess) _then)
      : super(_value, (v) => _then(v as TransactionLoadSuccess));

  @override
  TransactionLoadSuccess get _value => super._value as TransactionLoadSuccess;

  @override
  $Res call({
    Object transactions = freezed,
  }) {
    return _then(TransactionLoadSuccess(
      transactions == freezed
          ? _value.transactions
          : transactions as List<TransactionModel>,
    ));
  }
}

class _$TransactionLoadSuccess implements TransactionLoadSuccess {
  const _$TransactionLoadSuccess(this.transactions)
      : assert(transactions != null);

  @override
  final List<TransactionModel> transactions;

  @override
  String toString() {
    return 'TransactionState.loadSuccess(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionLoadSuccess &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(transactions);

  @override
  $TransactionLoadSuccessCopyWith<TransactionLoadSuccess> get copyWith =>
      _$TransactionLoadSuccessCopyWithImpl<TransactionLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<TransactionModel> transactions),
    @required Result loadFailure(Failure failure),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(transactions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loadInProgress(),
    Result loadSuccess(List<TransactionModel> transactions),
    Result loadFailure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(TransactionStarted value),
    @required Result loadInProgress(TransactionLoadInProgress value),
    @required Result loadSuccess(TransactionLoadSuccess value),
    @required Result loadFailure(TransactionLoadFailure value),
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
    Result started(TransactionStarted value),
    Result loadInProgress(TransactionLoadInProgress value),
    Result loadSuccess(TransactionLoadSuccess value),
    Result loadFailure(TransactionLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class TransactionLoadSuccess implements TransactionState {
  const factory TransactionLoadSuccess(List<TransactionModel> transactions) =
      _$TransactionLoadSuccess;

  List<TransactionModel> get transactions;
  $TransactionLoadSuccessCopyWith<TransactionLoadSuccess> get copyWith;
}

abstract class $TransactionLoadFailureCopyWith<$Res> {
  factory $TransactionLoadFailureCopyWith(TransactionLoadFailure value,
          $Res Function(TransactionLoadFailure) then) =
      _$TransactionLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$TransactionLoadFailureCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionLoadFailureCopyWith<$Res> {
  _$TransactionLoadFailureCopyWithImpl(TransactionLoadFailure _value,
      $Res Function(TransactionLoadFailure) _then)
      : super(_value, (v) => _then(v as TransactionLoadFailure));

  @override
  TransactionLoadFailure get _value => super._value as TransactionLoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(TransactionLoadFailure(
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

class _$TransactionLoadFailure implements TransactionLoadFailure {
  const _$TransactionLoadFailure(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TransactionState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $TransactionLoadFailureCopyWith<TransactionLoadFailure> get copyWith =>
      _$TransactionLoadFailureCopyWithImpl<TransactionLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<TransactionModel> transactions),
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
    Result loadSuccess(List<TransactionModel> transactions),
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
    @required Result started(TransactionStarted value),
    @required Result loadInProgress(TransactionLoadInProgress value),
    @required Result loadSuccess(TransactionLoadSuccess value),
    @required Result loadFailure(TransactionLoadFailure value),
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
    Result started(TransactionStarted value),
    Result loadInProgress(TransactionLoadInProgress value),
    Result loadSuccess(TransactionLoadSuccess value),
    Result loadFailure(TransactionLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class TransactionLoadFailure implements TransactionState {
  const factory TransactionLoadFailure(Failure failure) =
      _$TransactionLoadFailure;

  Failure get failure;
  $TransactionLoadFailureCopyWith<TransactionLoadFailure> get copyWith;
}
