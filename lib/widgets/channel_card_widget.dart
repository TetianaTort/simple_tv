import 'package:flutter/material.dart';
import 'package:simple_tv/api/client/api_constans.dart';
import 'package:simple_tv/api/models/response_models/channel_model.dart';
import 'package:simple_tv/config/resources/app_icons.dart';
import 'package:simple_tv/config/resources/dimensions.dart';
import 'package:simple_tv/utils/enum.dart';

class ChannelCardWidget extends StatelessWidget {
  const ChannelCardWidget({
    required this.channel,
    required this.onTap,
    super.key,
  });

  final ChannelModel channel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Card(
          margin: const EdgeInsets.all(Dimensions.paddingS),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: Dimensions.gapXS),
              Expanded(
                flex: 2,
                child: ClipRRect(
                  child: _getTvImage(channel),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    channel.name,
                    maxLines: Dimensions.textLinesM,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: Dimensions.gapM,
          right: Dimensions.gapM,
          child: CircleAvatar(
            backgroundColor:
                theme.colorScheme.primary.withOpacity(Dimensions.opacityS),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.paddingXS,
              ),
              child: Image.asset(
                channel.resolution == Resolution.sd.name
                    ? AppIcons.resolution480p
                    : AppIcons.resolution1080p,
                fit: BoxFit.contain,
                color: theme.colorScheme.onBackground,
              ),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            onTap: onTap,
          ),
        ),
      ],
    );
  }

  Widget _getTvImage(ChannelModel channel) {
    final logo = channel.logos.getFirstImage();
    if (logo != null) {
      return Image.network(
        '${ApiConstants.baseDomain}/v1/global/images/$logo?accessKey=WkVjNWNscFhORDBLCg==',
        fit: BoxFit.contain,
      );
    }
    return Image.asset(AppIcons.tv);
  }
}
