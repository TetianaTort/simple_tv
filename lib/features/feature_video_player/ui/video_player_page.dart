import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:simple_tv/api/models/response_models/channel_model.dart';
import 'package:simple_tv/config/resources/dimensions.dart';
import 'package:simple_tv/features/feature_video_player/controller/custom_player_controller.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({
    required this.channel,
    super.key,
  });

  final ChannelModel channel;

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late BetterPlayerController _videoController;

  @override
  void initState() {
    super.initState();

    _videoController = BetterPlayerController(
      BetterPlayerConfiguration(
        controlsConfiguration: BetterPlayerControlsConfiguration(
          controlsHideTime: const Duration(seconds: 1),
          playerTheme: BetterPlayerTheme.custom,
          customControlsBuilder: (videoController, onPlayerVisibilityChanged) =>
              CustomPlayerControl(controller: videoController),
        ),
        aspectRatio: Dimensions.ratioM,
        looping: true,
        autoPlay: true,
      ),
      betterPlayerDataSource: BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        widget.channel.decodeUrl(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            widget.channel.name,
          ),
        ),
        body: AspectRatio(
          aspectRatio: Dimensions.ratioM,
          child: BetterPlayer(controller: _videoController),
        ),
      );
}
