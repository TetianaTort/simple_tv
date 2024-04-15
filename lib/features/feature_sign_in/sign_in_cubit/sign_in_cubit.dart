// ignore_for_file: lines_longer_than_80_chars, avoid_dynamic_calls

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_tv/api/client/simple_tv_api_client.dart';
import 'package:simple_tv/api/models/request_models/sign_in_request.dart';
import 'package:simple_tv/api/models/response_models/sign_in_data_response.dart';
import 'package:simple_tv/data/user_repo.dart';
import 'package:simple_tv/general_app/general_app.dart';
import 'package:simple_tv/widgets/custom_snack_bar.dart';

part 'sign_in_state.dart';
part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(
    this._client,
    this._userRepository,
  ) : super(const SignInState.initial());

  final SimpleTVApiClient _client;
  final UserRepository _userRepository;

  FutureOr<void> signIn(String userName, String password) async {
    emit(const _WaitingResponseSignInState());
    final signInForm = SignInRequest(password: password, username: userName);
    try {
      final response = await _client.userSignIn(signInForm);
      if (response.status == 'ok') {
        final signInData = response.data;
        await _userRepository.setUserId(response.data.userId);
        await _userRepository.setOperator(response.data.operatorUid);
        emit(_SuccessSignInState(signInData));
      }
    } on DioException catch (error) {
      if (error.response != null) {
        final errorMessage =
            error.response?.data?['data']?['message'] ?? 'Try again later';
        snackBarKey.currentState?.showSnackBar(
          customSnackBar(
            messageType: MessagesType.error,
            message: errorMessage as String,
          ),
        );
        emit(_FailedSignInState(errorMessage.toString()));
      }
    } on Exception catch (error) {
      emit(_FailedSignInState(error.toString()));
      snackBarKey.currentState?.showSnackBar(
        customSnackBar(
          messageType: MessagesType.error,
          message: error.toString(),
        ),
      );
    }
  }
}
