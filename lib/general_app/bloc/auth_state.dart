part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.verificationStatus() = _VerificationStatusAuthState;

  const factory AuthState.userSignedIn() = _UserSignedInAuthState;

  const factory AuthState.userSignedOut() = _UserSignedOutAuthState;
}
