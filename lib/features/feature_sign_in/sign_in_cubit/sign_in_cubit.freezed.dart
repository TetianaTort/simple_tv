// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingResponse,
    required TResult Function(SignInDataResponse signInData) success,
    required TResult Function(String msg) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingResponse,
    TResult? Function(SignInDataResponse signInData)? success,
    TResult? Function(String msg)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingResponse,
    TResult Function(SignInDataResponse signInData)? success,
    TResult Function(String msg)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingResponseSignInState value)
        waitingResponse,
    required TResult Function(_SuccessSignInState value) success,
    required TResult Function(_FailedSignInState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingResponseSignInState value)? waitingResponse,
    TResult? Function(_SuccessSignInState value)? success,
    TResult? Function(_FailedSignInState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingResponseSignInState value)? waitingResponse,
    TResult Function(_SuccessSignInState value)? success,
    TResult Function(_FailedSignInState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignInState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingResponse,
    required TResult Function(SignInDataResponse signInData) success,
    required TResult Function(String msg) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingResponse,
    TResult? Function(SignInDataResponse signInData)? success,
    TResult? Function(String msg)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingResponse,
    TResult Function(SignInDataResponse signInData)? success,
    TResult Function(String msg)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingResponseSignInState value)
        waitingResponse,
    required TResult Function(_SuccessSignInState value) success,
    required TResult Function(_FailedSignInState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingResponseSignInState value)? waitingResponse,
    TResult? Function(_SuccessSignInState value)? success,
    TResult? Function(_FailedSignInState value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingResponseSignInState value)? waitingResponse,
    TResult Function(_SuccessSignInState value)? success,
    TResult Function(_FailedSignInState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$WaitingResponseSignInStateImplCopyWith<$Res> {
  factory _$$WaitingResponseSignInStateImplCopyWith(
          _$WaitingResponseSignInStateImpl value,
          $Res Function(_$WaitingResponseSignInStateImpl) then) =
      __$$WaitingResponseSignInStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WaitingResponseSignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$WaitingResponseSignInStateImpl>
    implements _$$WaitingResponseSignInStateImplCopyWith<$Res> {
  __$$WaitingResponseSignInStateImplCopyWithImpl(
      _$WaitingResponseSignInStateImpl _value,
      $Res Function(_$WaitingResponseSignInStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WaitingResponseSignInStateImpl implements _WaitingResponseSignInState {
  const _$WaitingResponseSignInStateImpl();

  @override
  String toString() {
    return 'SignInState.waitingResponse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitingResponseSignInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingResponse,
    required TResult Function(SignInDataResponse signInData) success,
    required TResult Function(String msg) failed,
  }) {
    return waitingResponse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingResponse,
    TResult? Function(SignInDataResponse signInData)? success,
    TResult? Function(String msg)? failed,
  }) {
    return waitingResponse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingResponse,
    TResult Function(SignInDataResponse signInData)? success,
    TResult Function(String msg)? failed,
    required TResult orElse(),
  }) {
    if (waitingResponse != null) {
      return waitingResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingResponseSignInState value)
        waitingResponse,
    required TResult Function(_SuccessSignInState value) success,
    required TResult Function(_FailedSignInState value) failed,
  }) {
    return waitingResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingResponseSignInState value)? waitingResponse,
    TResult? Function(_SuccessSignInState value)? success,
    TResult? Function(_FailedSignInState value)? failed,
  }) {
    return waitingResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingResponseSignInState value)? waitingResponse,
    TResult Function(_SuccessSignInState value)? success,
    TResult Function(_FailedSignInState value)? failed,
    required TResult orElse(),
  }) {
    if (waitingResponse != null) {
      return waitingResponse(this);
    }
    return orElse();
  }
}

abstract class _WaitingResponseSignInState implements SignInState {
  const factory _WaitingResponseSignInState() =
      _$WaitingResponseSignInStateImpl;
}

/// @nodoc
abstract class _$$SuccessSignInStateImplCopyWith<$Res> {
  factory _$$SuccessSignInStateImplCopyWith(_$SuccessSignInStateImpl value,
          $Res Function(_$SuccessSignInStateImpl) then) =
      __$$SuccessSignInStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInDataResponse signInData});
}

/// @nodoc
class __$$SuccessSignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SuccessSignInStateImpl>
    implements _$$SuccessSignInStateImplCopyWith<$Res> {
  __$$SuccessSignInStateImplCopyWithImpl(_$SuccessSignInStateImpl _value,
      $Res Function(_$SuccessSignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInData = null,
  }) {
    return _then(_$SuccessSignInStateImpl(
      null == signInData
          ? _value.signInData
          : signInData // ignore: cast_nullable_to_non_nullable
              as SignInDataResponse,
    ));
  }
}

/// @nodoc

class _$SuccessSignInStateImpl implements _SuccessSignInState {
  const _$SuccessSignInStateImpl(this.signInData);

  @override
  final SignInDataResponse signInData;

  @override
  String toString() {
    return 'SignInState.success(signInData: $signInData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSignInStateImpl &&
            (identical(other.signInData, signInData) ||
                other.signInData == signInData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSignInStateImplCopyWith<_$SuccessSignInStateImpl> get copyWith =>
      __$$SuccessSignInStateImplCopyWithImpl<_$SuccessSignInStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingResponse,
    required TResult Function(SignInDataResponse signInData) success,
    required TResult Function(String msg) failed,
  }) {
    return success(signInData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingResponse,
    TResult? Function(SignInDataResponse signInData)? success,
    TResult? Function(String msg)? failed,
  }) {
    return success?.call(signInData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingResponse,
    TResult Function(SignInDataResponse signInData)? success,
    TResult Function(String msg)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(signInData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingResponseSignInState value)
        waitingResponse,
    required TResult Function(_SuccessSignInState value) success,
    required TResult Function(_FailedSignInState value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingResponseSignInState value)? waitingResponse,
    TResult? Function(_SuccessSignInState value)? success,
    TResult? Function(_FailedSignInState value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingResponseSignInState value)? waitingResponse,
    TResult Function(_SuccessSignInState value)? success,
    TResult Function(_FailedSignInState value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessSignInState implements SignInState {
  const factory _SuccessSignInState(final SignInDataResponse signInData) =
      _$SuccessSignInStateImpl;

  SignInDataResponse get signInData;
  @JsonKey(ignore: true)
  _$$SuccessSignInStateImplCopyWith<_$SuccessSignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedSignInStateImplCopyWith<$Res> {
  factory _$$FailedSignInStateImplCopyWith(_$FailedSignInStateImpl value,
          $Res Function(_$FailedSignInStateImpl) then) =
      __$$FailedSignInStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$FailedSignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$FailedSignInStateImpl>
    implements _$$FailedSignInStateImplCopyWith<$Res> {
  __$$FailedSignInStateImplCopyWithImpl(_$FailedSignInStateImpl _value,
      $Res Function(_$FailedSignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$FailedSignInStateImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedSignInStateImpl implements _FailedSignInState {
  const _$FailedSignInStateImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'SignInState.failed(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedSignInStateImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedSignInStateImplCopyWith<_$FailedSignInStateImpl> get copyWith =>
      __$$FailedSignInStateImplCopyWithImpl<_$FailedSignInStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingResponse,
    required TResult Function(SignInDataResponse signInData) success,
    required TResult Function(String msg) failed,
  }) {
    return failed(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingResponse,
    TResult? Function(SignInDataResponse signInData)? success,
    TResult? Function(String msg)? failed,
  }) {
    return failed?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingResponse,
    TResult Function(SignInDataResponse signInData)? success,
    TResult Function(String msg)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingResponseSignInState value)
        waitingResponse,
    required TResult Function(_SuccessSignInState value) success,
    required TResult Function(_FailedSignInState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingResponseSignInState value)? waitingResponse,
    TResult? Function(_SuccessSignInState value)? success,
    TResult? Function(_FailedSignInState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingResponseSignInState value)? waitingResponse,
    TResult Function(_SuccessSignInState value)? success,
    TResult Function(_FailedSignInState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _FailedSignInState implements SignInState {
  const factory _FailedSignInState(final String msg) = _$FailedSignInStateImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$FailedSignInStateImplCopyWith<_$FailedSignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
