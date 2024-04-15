// ignore_for_file: one_member_abstracts
import 'package:injectable/injectable.dart';
import 'package:simple_tv/api/client/simple_tv_api_client.dart';
import 'package:simple_tv/api/models/response_models/channel_response.dart';
import 'package:simple_tv/injectable_environments.dart';

abstract interface class ChannelsRepo {
  Future<ChannelResponse> fetchChannels(
    String operatorUid,
    String activePackages,
  );
}

@Injectable(as: ChannelsRepo, env: [SimpleTVEnvironments.dev])
class ChannelsRepoImpl implements ChannelsRepo {
  ChannelsRepoImpl(this._client);

  final SimpleTVApiClient _client;

  @override
  Future<ChannelResponse> fetchChannels(
    String operatorUid,
    String activePackages,
  ) =>
      _client.fetchChannels(
        operatorUid: operatorUid,
        activePackages: activePackages,
      );
}
