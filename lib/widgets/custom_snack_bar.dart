import 'package:flutter/material.dart';
import 'package:simple_tv/config/resources/app_colors.dart';
import 'package:simple_tv/config/resources/app_icons.dart';
import 'package:simple_tv/config/resources/app_text_styles.dart';
import 'package:simple_tv/config/resources/dimensions.dart';

SnackBar customSnackBar({
  required String message,
  required MessagesType messageType,
}) =>
    SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        height: Dimensions.imageSideXL,
        decoration: const BoxDecoration(
          color: AppColors.onSecondaryContainer,
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radiusS),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.paddingS),
          child: Row(
            children: [
              Container(
                width: Dimensions.gapXS,
                decoration: BoxDecoration(
                  color: messageType.color,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(Dimensions.radiusS),
                  ),
                ),
              ),
              const SizedBox(width: Dimensions.gapS),
              CircleAvatar(
                backgroundColor:
                    messageType.color.withOpacity(Dimensions.opacityS),
                child: Padding(
                  padding: const EdgeInsets.all(Dimensions.paddingS),
                  child: Image.asset(
                    messageType.imagePath,
                    color: messageType.color,
                  ),
                ),
              ),
              const SizedBox(width: Dimensions.gapS),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      messageType.title,
                      style: AppTextStyles.titleSmall
                          .copyWith(color: AppColors.onPrimary),
                    ),
                    Text(
                      message,
                      style: AppTextStyles.bodySmall
                          .copyWith(color: AppColors.onPrimary),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

enum MessagesType {
  success(
    title: 'Done!',
    color: AppColors.primary,
    imagePath: AppIcons.check,
  ),
  info(
    title: 'Info',
    color: AppColors.info,
    imagePath: AppIcons.info,
  ),
  error(
    title: 'Something went wrong',
    color: AppColors.error,
    imagePath: AppIcons.dangers,
  );

  const MessagesType({
    required this.title,
    required this.color,
    required this.imagePath,
  });
  final String title;
  final Color color;
  final String imagePath;
}
