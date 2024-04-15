import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:simple_tv/config/resources/dimensions.dart';
import 'package:simple_tv/features/feature_video_player/controller/video_scrubber.dart';

class CustomPlayerControl extends StatelessWidget {
  const CustomPlayerControl({required this.controller, super.key});

  final BetterPlayerController controller;

  void _onTap() {
    controller.setControlsVisibility(true);
    if (controller.isPlaying()!) {
      controller.pause();
    } else {
      controller.play();
    }
  }

  void _controlVisibility() {
    controller.setControlsVisibility(true);
    Future.delayed(
      const Duration(seconds: 3),
      () => controller.setControlsVisibility(false),
    );
  }

  String _formatDuration(Duration? duration) {
    if (duration != null) {
      final minutes = duration.inMinutes.toString().padLeft(2, '0');
      final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
      return '$minutes:$seconds';
    } else {
      return '00:00';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: _controlVisibility,
      child: StreamBuilder(
        initialData: false,
        stream: controller.controlsVisibilityStream,
        builder: (context, snapshot) => Stack(
          children: [
            Visibility(
              visible: snapshot.data!,
              child: Positioned(
                child: Center(
                  child: FloatingActionButton(
                    onPressed: _onTap,
                    backgroundColor: Colors.black.withOpacity(0.7),
                    child: controller.isPlaying()!
                        ? Icon(
                            Icons.pause,
                            color: theme.colorScheme.onPrimary,
                            size: Dimensions.imageSideS,
                          )
                        : Icon(
                            Icons.play_arrow_rounded,
                            color: theme.colorScheme.onPrimary,
                            size: Dimensions.imageSideM,
                          ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: Dimensions.gapS,
              right: Dimensions.gapS,
              bottom: Dimensions.gapXS,
              child: ValueListenableBuilder(
                valueListenable: controller.videoPlayerController!,
                builder: (context, value, child) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Dimensions.imageSideXS,
                          width: Dimensions.imageSideXL,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radiusL),
                            color: theme.colorScheme.onSurface
                                .withOpacity(Dimensions.opacityM),
                          ),
                          child: Text(
                            '${_formatDuration(value.position)}/${_formatDuration(value.duration)}',
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(color: theme.colorScheme.onPrimary),
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            controller.toggleFullScreen();
                          },
                          icon: Icon(
                            Icons.crop_free_rounded,
                            size: Dimensions.imageSideXXS,
                            color: theme.colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                    VideoScrubber(
                      controller: controller,
                      playerValue: value,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
