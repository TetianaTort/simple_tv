part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;

  const factory SignInState.waitingResponse() = _WaitingResponseSignInState;

  const factory SignInState.success(SignInDataResponse signInData) =
      _SuccessSignInState;

  const factory SignInState.failed(String msg) = _FailedSignInState;
}
