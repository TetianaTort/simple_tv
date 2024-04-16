import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_tv/api/models/response_models/sign_in_data_response.dart';
import 'package:simple_tv/data/auth_token_repo.dart';
import 'package:simple_tv/data/user_repo.dart';
import 'package:simple_tv/features/feature_sign_in/sign_in_cubit/sign_in_cubit.dart';
import 'package:simple_tv/utils/enum.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._tokenRepository,
    this._signInCubit,
    this._userRepository,
  ) : super(const _Initial()) {
    on<_StartedAuthEvent>(_starting);
    on<_SignInAuthEvent>(_signingIn);
    on<_SignOutAuthEvent>(_signingOut);

    add(const _StartedAuthEvent());
  }

  final AuthTokenRepository _tokenRepository;
  final UserRepository _userRepository;

  final SignInCubit _signInCubit;
  StreamSubscription<SignInState>? _signInCubitSubscription;

  void _streamSubscribtion() {
    _signInCubitSubscription = _signInCubit.stream.listen(
      (state) {
        state.whenOrNull(
          success: (signInData) =>
              add(_SignInAuthEvent(signInDataResponse: signInData)),
        );
      },
    );
  }

  FutureOr<void> _starting(
    _StartedAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const _VerificationStatusAuthState());
    if (kIsWeb) {
      await _userRepository.setDeviceClass(DeviceClass.desktop.title);
    } else {
      if (Platform.isIOS || Platform.isAndroid) {
        await _userRepository.setDeviceClass(DeviceClass.mobile.title);
      } else if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
        await _userRepository.setDeviceClass(DeviceClass.desktop.title);
      } else {
        await _userRepository.setDeviceClass(DeviceClass.mobile.title);
      }
    }

    final token = await _tokenRepository.getToken();
    if (token?.isNotEmpty == true) {
      emit(const _UserSignedInAuthState());
    } else {
      emit(const _UserSignedOutAuthState());
      _streamSubscribtion();
    }
  }

  FutureOr<void> _signingIn(
    _SignInAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    await _tokenRepository.setToken(event.signInDataResponse.accessToken);
    await _tokenRepository
        .setRefreshToken(event.signInDataResponse.refreshToken);
    emit(const _UserSignedInAuthState());
    _cancelStreamSubscription();
  }

  FutureOr<void> _signingOut(
    _SignOutAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    await _tokenRepository.setToken(null);
    await _tokenRepository.setRefreshToken(null);
    await _userRepository.setOperator(null);
    await _userRepository.setUserId(null);
    emit(const _UserSignedOutAuthState());
    _streamSubscribtion();
  }

  void _cancelStreamSubscription() {
    _signInCubitSubscription?.cancel();
  }

  @override
  Future<void> close() {
    _cancelStreamSubscription();
    return super.close();
  }
}
