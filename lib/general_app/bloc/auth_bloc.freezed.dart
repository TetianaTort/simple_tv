// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignInDataResponse signInDataResponse) signIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignInDataResponse signInDataResponse)? signIn,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignInDataResponse signInDataResponse)? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedAuthEvent value) started,
    required TResult Function(_SignInAuthEvent value) signIn,
    required TResult Function(_SignOutAuthEvent value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedAuthEvent value)? started,
    TResult? Function(_SignInAuthEvent value)? signIn,
    TResult? Function(_SignOutAuthEvent value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedAuthEvent value)? started,
    TResult Function(_SignInAuthEvent value)? signIn,
    TResult Function(_SignOutAuthEvent value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedAuthEventImplCopyWith<$Res> {
  factory _$$StartedAuthEventImplCopyWith(_$StartedAuthEventImpl value,
          $Res Function(_$StartedAuthEventImpl) then) =
      __$$StartedAuthEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedAuthEventImpl>
    implements _$$StartedAuthEventImplCopyWith<$Res> {
  __$$StartedAuthEventImplCopyWithImpl(_$StartedAuthEventImpl _value,
      $Res Function(_$StartedAuthEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedAuthEventImpl implements _StartedAuthEvent {
  const _$StartedAuthEventImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedAuthEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignInDataResponse signInDataResponse) signIn,
    required TResult Function() signOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignInDataResponse signInDataResponse)? signIn,
    TResult? Function()? signOut,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignInDataResponse signInDataResponse)? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedAuthEvent value) started,
    required TResult Function(_SignInAuthEvent value) signIn,
    required TResult Function(_SignOutAuthEvent value) signOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedAuthEvent value)? started,
    TResult? Function(_SignInAuthEvent value)? signIn,
    TResult? Function(_SignOutAuthEvent value)? signOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedAuthEvent value)? started,
    TResult Function(_SignInAuthEvent value)? signIn,
    TResult Function(_SignOutAuthEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedAuthEvent implements AuthEvent {
  const factory _StartedAuthEvent() = _$StartedAuthEventImpl;
}

/// @nodoc
abstract class _$$SignInAuthEventImplCopyWith<$Res> {
  factory _$$SignInAuthEventImplCopyWith(_$SignInAuthEventImpl value,
          $Res Function(_$SignInAuthEventImpl) then) =
      __$$SignInAuthEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInDataResponse signInDataResponse});
}

/// @nodoc
class __$$SignInAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInAuthEventImpl>
    implements _$$SignInAuthEventImplCopyWith<$Res> {
  __$$SignInAuthEventImplCopyWithImpl(
      _$SignInAuthEventImpl _value, $Res Function(_$SignInAuthEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInDataResponse = null,
  }) {
    return _then(_$SignInAuthEventImpl(
      signInDataResponse: null == signInDataResponse
          ? _value.signInDataResponse
          : signInDataResponse // ignore: cast_nullable_to_non_nullable
              as SignInDataResponse,
    ));
  }
}

/// @nodoc

class _$SignInAuthEventImpl implements _SignInAuthEvent {
  const _$SignInAuthEventImpl({required this.signInDataResponse});

  @override
  final SignInDataResponse signInDataResponse;

  @override
  String toString() {
    return 'AuthEvent.signIn(signInDataResponse: $signInDataResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInAuthEventImpl &&
            (identical(other.signInDataResponse, signInDataResponse) ||
                other.signInDataResponse == signInDataResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInDataResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInAuthEventImplCopyWith<_$SignInAuthEventImpl> get copyWith =>
      __$$SignInAuthEventImplCopyWithImpl<_$SignInAuthEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignInDataResponse signInDataResponse) signIn,
    required TResult Function() signOut,
  }) {
    return signIn(signInDataResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignInDataResponse signInDataResponse)? signIn,
    TResult? Function()? signOut,
  }) {
    return signIn?.call(signInDataResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignInDataResponse signInDataResponse)? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(signInDataResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedAuthEvent value) started,
    required TResult Function(_SignInAuthEvent value) signIn,
    required TResult Function(_SignOutAuthEvent value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedAuthEvent value)? started,
    TResult? Function(_SignInAuthEvent value)? signIn,
    TResult? Function(_SignOutAuthEvent value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedAuthEvent value)? started,
    TResult Function(_SignInAuthEvent value)? signIn,
    TResult Function(_SignOutAuthEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignInAuthEvent implements AuthEvent {
  const factory _SignInAuthEvent(
          {required final SignInDataResponse signInDataResponse}) =
      _$SignInAuthEventImpl;

  SignInDataResponse get signInDataResponse;
  @JsonKey(ignore: true)
  _$$SignInAuthEventImplCopyWith<_$SignInAuthEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutAuthEventImplCopyWith<$Res> {
  factory _$$SignOutAuthEventImplCopyWith(_$SignOutAuthEventImpl value,
          $Res Function(_$SignOutAuthEventImpl) then) =
      __$$SignOutAuthEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutAuthEventImpl>
    implements _$$SignOutAuthEventImplCopyWith<$Res> {
  __$$SignOutAuthEventImplCopyWithImpl(_$SignOutAuthEventImpl _value,
      $Res Function(_$SignOutAuthEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutAuthEventImpl implements _SignOutAuthEvent {
  const _$SignOutAuthEventImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutAuthEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignInDataResponse signInDataResponse) signIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignInDataResponse signInDataResponse)? signIn,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignInDataResponse signInDataResponse)? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedAuthEvent value) started,
    required TResult Function(_SignInAuthEvent value) signIn,
    required TResult Function(_SignOutAuthEvent value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedAuthEvent value)? started,
    TResult? Function(_SignInAuthEvent value)? signIn,
    TResult? Function(_SignOutAuthEvent value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedAuthEvent value)? started,
    TResult Function(_SignInAuthEvent value)? signIn,
    TResult Function(_SignOutAuthEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOutAuthEvent implements AuthEvent {
  const factory _SignOutAuthEvent() = _$SignOutAuthEventImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verificationStatus,
    required TResult Function() userSignedIn,
    required TResult Function() userSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verificationStatus,
    TResult? Function()? userSignedIn,
    TResult? Function()? userSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verificationStatus,
    TResult Function()? userSignedIn,
    TResult Function()? userSignedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VerificationStatusAuthState value)
        verificationStatus,
    required TResult Function(_UserSignedInAuthState value) userSignedIn,
    required TResult Function(_UserSignedOutAuthState value) userSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VerificationStatusAuthState value)? verificationStatus,
    TResult? Function(_UserSignedInAuthState value)? userSignedIn,
    TResult? Function(_UserSignedOutAuthState value)? userSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VerificationStatusAuthState value)? verificationStatus,
    TResult Function(_UserSignedInAuthState value)? userSignedIn,
    TResult Function(_UserSignedOutAuthState value)? userSignedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AuthState.initial()';
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
    required TResult Function() verificationStatus,
    required TResult Function() userSignedIn,
    required TResult Function() userSignedOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verificationStatus,
    TResult? Function()? userSignedIn,
    TResult? Function()? userSignedOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verificationStatus,
    TResult Function()? userSignedIn,
    TResult Function()? userSignedOut,
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
    required TResult Function(_VerificationStatusAuthState value)
        verificationStatus,
    required TResult Function(_UserSignedInAuthState value) userSignedIn,
    required TResult Function(_UserSignedOutAuthState value) userSignedOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VerificationStatusAuthState value)? verificationStatus,
    TResult? Function(_UserSignedInAuthState value)? userSignedIn,
    TResult? Function(_UserSignedOutAuthState value)? userSignedOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VerificationStatusAuthState value)? verificationStatus,
    TResult Function(_UserSignedInAuthState value)? userSignedIn,
    TResult Function(_UserSignedOutAuthState value)? userSignedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$VerificationStatusAuthStateImplCopyWith<$Res> {
  factory _$$VerificationStatusAuthStateImplCopyWith(
          _$VerificationStatusAuthStateImpl value,
          $Res Function(_$VerificationStatusAuthStateImpl) then) =
      __$$VerificationStatusAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerificationStatusAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$VerificationStatusAuthStateImpl>
    implements _$$VerificationStatusAuthStateImplCopyWith<$Res> {
  __$$VerificationStatusAuthStateImplCopyWithImpl(
      _$VerificationStatusAuthStateImpl _value,
      $Res Function(_$VerificationStatusAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerificationStatusAuthStateImpl
    implements _VerificationStatusAuthState {
  const _$VerificationStatusAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.verificationStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationStatusAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verificationStatus,
    required TResult Function() userSignedIn,
    required TResult Function() userSignedOut,
  }) {
    return verificationStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verificationStatus,
    TResult? Function()? userSignedIn,
    TResult? Function()? userSignedOut,
  }) {
    return verificationStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verificationStatus,
    TResult Function()? userSignedIn,
    TResult Function()? userSignedOut,
    required TResult orElse(),
  }) {
    if (verificationStatus != null) {
      return verificationStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VerificationStatusAuthState value)
        verificationStatus,
    required TResult Function(_UserSignedInAuthState value) userSignedIn,
    required TResult Function(_UserSignedOutAuthState value) userSignedOut,
  }) {
    return verificationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VerificationStatusAuthState value)? verificationStatus,
    TResult? Function(_UserSignedInAuthState value)? userSignedIn,
    TResult? Function(_UserSignedOutAuthState value)? userSignedOut,
  }) {
    return verificationStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VerificationStatusAuthState value)? verificationStatus,
    TResult Function(_UserSignedInAuthState value)? userSignedIn,
    TResult Function(_UserSignedOutAuthState value)? userSignedOut,
    required TResult orElse(),
  }) {
    if (verificationStatus != null) {
      return verificationStatus(this);
    }
    return orElse();
  }
}

abstract class _VerificationStatusAuthState implements AuthState {
  const factory _VerificationStatusAuthState() =
      _$VerificationStatusAuthStateImpl;
}

/// @nodoc
abstract class _$$UserSignedInAuthStateImplCopyWith<$Res> {
  factory _$$UserSignedInAuthStateImplCopyWith(
          _$UserSignedInAuthStateImpl value,
          $Res Function(_$UserSignedInAuthStateImpl) then) =
      __$$UserSignedInAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSignedInAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserSignedInAuthStateImpl>
    implements _$$UserSignedInAuthStateImplCopyWith<$Res> {
  __$$UserSignedInAuthStateImplCopyWithImpl(_$UserSignedInAuthStateImpl _value,
      $Res Function(_$UserSignedInAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserSignedInAuthStateImpl implements _UserSignedInAuthState {
  const _$UserSignedInAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.userSignedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignedInAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verificationStatus,
    required TResult Function() userSignedIn,
    required TResult Function() userSignedOut,
  }) {
    return userSignedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verificationStatus,
    TResult? Function()? userSignedIn,
    TResult? Function()? userSignedOut,
  }) {
    return userSignedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verificationStatus,
    TResult Function()? userSignedIn,
    TResult Function()? userSignedOut,
    required TResult orElse(),
  }) {
    if (userSignedIn != null) {
      return userSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VerificationStatusAuthState value)
        verificationStatus,
    required TResult Function(_UserSignedInAuthState value) userSignedIn,
    required TResult Function(_UserSignedOutAuthState value) userSignedOut,
  }) {
    return userSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VerificationStatusAuthState value)? verificationStatus,
    TResult? Function(_UserSignedInAuthState value)? userSignedIn,
    TResult? Function(_UserSignedOutAuthState value)? userSignedOut,
  }) {
    return userSignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VerificationStatusAuthState value)? verificationStatus,
    TResult Function(_UserSignedInAuthState value)? userSignedIn,
    TResult Function(_UserSignedOutAuthState value)? userSignedOut,
    required TResult orElse(),
  }) {
    if (userSignedIn != null) {
      return userSignedIn(this);
    }
    return orElse();
  }
}

abstract class _UserSignedInAuthState implements AuthState {
  const factory _UserSignedInAuthState() = _$UserSignedInAuthStateImpl;
}

/// @nodoc
abstract class _$$UserSignedOutAuthStateImplCopyWith<$Res> {
  factory _$$UserSignedOutAuthStateImplCopyWith(
          _$UserSignedOutAuthStateImpl value,
          $Res Function(_$UserSignedOutAuthStateImpl) then) =
      __$$UserSignedOutAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSignedOutAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserSignedOutAuthStateImpl>
    implements _$$UserSignedOutAuthStateImplCopyWith<$Res> {
  __$$UserSignedOutAuthStateImplCopyWithImpl(
      _$UserSignedOutAuthStateImpl _value,
      $Res Function(_$UserSignedOutAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserSignedOutAuthStateImpl implements _UserSignedOutAuthState {
  const _$UserSignedOutAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.userSignedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignedOutAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verificationStatus,
    required TResult Function() userSignedIn,
    required TResult Function() userSignedOut,
  }) {
    return userSignedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verificationStatus,
    TResult? Function()? userSignedIn,
    TResult? Function()? userSignedOut,
  }) {
    return userSignedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verificationStatus,
    TResult Function()? userSignedIn,
    TResult Function()? userSignedOut,
    required TResult orElse(),
  }) {
    if (userSignedOut != null) {
      return userSignedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VerificationStatusAuthState value)
        verificationStatus,
    required TResult Function(_UserSignedInAuthState value) userSignedIn,
    required TResult Function(_UserSignedOutAuthState value) userSignedOut,
  }) {
    return userSignedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VerificationStatusAuthState value)? verificationStatus,
    TResult? Function(_UserSignedInAuthState value)? userSignedIn,
    TResult? Function(_UserSignedOutAuthState value)? userSignedOut,
  }) {
    return userSignedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VerificationStatusAuthState value)? verificationStatus,
    TResult Function(_UserSignedInAuthState value)? userSignedIn,
    TResult Function(_UserSignedOutAuthState value)? userSignedOut,
    required TResult orElse(),
  }) {
    if (userSignedOut != null) {
      return userSignedOut(this);
    }
    return orElse();
  }
}

abstract class _UserSignedOutAuthState implements AuthState {
  const factory _UserSignedOutAuthState() = _$UserSignedOutAuthStateImpl;
}
