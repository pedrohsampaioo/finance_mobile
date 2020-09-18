// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  ApiFailure apiFailure() {
    return const ApiFailure();
  }
}

// ignore: unused_element
const $Failure = _$FailureTearOff();

mixin _$Failure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result apiFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result apiFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result apiFailure(ApiFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result apiFailure(ApiFailure value),
    @required Result orElse(),
  });
}

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res>;
}

class _$ApiFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(ApiFailure _value, $Res Function(ApiFailure) _then)
      : super(_value, (v) => _then(v as ApiFailure));

  @override
  ApiFailure get _value => super._value as ApiFailure;
}

class _$ApiFailure implements ApiFailure {
  const _$ApiFailure();

  @override
  String toString() {
    return 'Failure.apiFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ApiFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result apiFailure(),
  }) {
    assert(apiFailure != null);
    return apiFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result apiFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (apiFailure != null) {
      return apiFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result apiFailure(ApiFailure value),
  }) {
    assert(apiFailure != null);
    return apiFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result apiFailure(ApiFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (apiFailure != null) {
      return apiFailure(this);
    }
    return orElse();
  }
}

abstract class ApiFailure implements Failure {
  const factory ApiFailure() = _$ApiFailure;
}
