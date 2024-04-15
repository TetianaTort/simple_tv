part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _StartedAuthEvent;

  const factory AuthEvent.signIn({
    required SignInDataResponse signInDataResponse,
  }) = _SignInAuthEvent;

  const factory AuthEvent.signOut() = _SignOutAuthEvent;
}
