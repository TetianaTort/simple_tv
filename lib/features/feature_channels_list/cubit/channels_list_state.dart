part of 'channels_list_cubit.dart';

@freezed
class ChannelsListState with _$ChannelsListState {
  const factory ChannelsListState.initial() = _Initial;

  const factory ChannelsListState.fetching() = _FetchingChannelsListState;

  const factory ChannelsListState.fetched({
    required List<ChannelModel> channelList,
  }) = _FetchedChannelsListState;

  const factory ChannelsListState.failed(String msg) = _FailedChannelsListState;
}
