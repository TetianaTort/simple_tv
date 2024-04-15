import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class VideoScrubber extends StatefulWidget {
  const VideoScrubber({
    required this.playerValue,
    required this.controller,
    super.key,
  });

  final VideoPlayerValue playerValue;
  final BetterPlayerController controller;

  @override
  VideoScrubberState createState() => VideoScrubberState();
}

class VideoScrubberState extends State<VideoScrubber> {
  double _value = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant VideoScrubber oldWidget) {
    super.didUpdateWidget(oldWidget);
    final position = oldWidget.playerValue.position.inSeconds;
    final duration = oldWidget.playerValue.duration?.inSeconds ?? 0;
    if (duration > 0) {
      setState(() {
        _value = position / duration;
      });
    } else {
      setState(() {
        _value = 0;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbShape: CustomThumbShape(),
        overlayShape: SliderComponentShape.noOverlay,
      ),
      child: Slider(
        value: _value,
        inactiveColor: theme.colorScheme.surfaceVariant,
        onChanged: (newValue) {
          setState(() {
            _value = newValue;
          });
          final newProgress = Duration(
            milliseconds: (_value *
                    widget.controller.videoPlayerController!.value.duration!
                        .inMilliseconds)
                .toInt(),
          );
          widget.controller.seekTo(newProgress);
        },
      ),
    );
  }
}

class CustomThumbShape extends SliderComponentShape {
  final double thumbRadius = 6;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) =>
      Size.fromRadius(thumbRadius);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;
    final fillPaint = Paint()
      ..color = sliderTheme.thumbColor!
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, thumbRadius, fillPaint);
  }
}
