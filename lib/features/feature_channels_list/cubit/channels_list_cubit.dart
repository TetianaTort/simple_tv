// ignore_for_file: avoid_dynamic_calls

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_tv/api/models/response_models/channel_model.dart';
import 'package:simple_tv/api/repository/channels_repo.dart';
import 'package:simple_tv/api/repository/user_packages_repo.dart';
import 'package:simple_tv/data/user_repo.dart';
import 'package:simple_tv/general_app/general_app.dart';
import 'package:simple_tv/widgets/custom_snack_bar.dart';

part 'channels_list_state.dart';
part 'channels_list_cubit.freezed.dart';

class ChannelsListCubit extends Cubit<ChannelsListState> {
  ChannelsListCubit(
    this._userRepository,
    this._packagesRepo,
    this._channelsRepo,
  ) : super(const ChannelsListState.initial()) {
    getChannels();
  }

  final UserRepository _userRepository;
  final UserPackagesRepo _packagesRepo;
  final ChannelsRepo _channelsRepo;

  FutureOr<void> getChannels() async {
    emit(const _FetchingChannelsListState());
    try {
      final operator = await _userRepository.getOperator();
      final userId = await _userRepository.getUserId();
      final deviceClass = await _userRepository.getDeviceClass();
      if (operator != null && userId != null && deviceClass != null) {
        final packages =
            await _packagesRepo.fetchPackages(operator, userId, deviceClass);

        if (packages.data.isNotEmpty) {
          final activePackages = packages.data
              .where((item) => item.purchased != null)
              .map((item) => item.id.toString())
              .join(',');
          final channels =
              await _channelsRepo.fetchChannels(operator, activePackages);
          if (channels.status == 'ok') {
            emit(_FetchedChannelsListState(channelList: channels.data));
          }
        }
      }
    } on DioException catch (error) {
      if (error.response != null) {
        final errorMessage =
            error.response?.data?['data']?['message'] ?? 'Please sign in again';
        snackBarKey.currentState?.showSnackBar(
          customSnackBar(
            messageType: MessagesType.error,
            message: errorMessage.toString(),
          ),
        );
        emit(_FailedChannelsListState(errorMessage.toString()));
      }
    } on Exception catch (error) {
      emit(_FailedChannelsListState(error.toString()));
      snackBarKey.currentState?.showSnackBar(
        customSnackBar(
          messageType: MessagesType.error,
          message: error.toString(),
        ),
      );
    }
  }
}
