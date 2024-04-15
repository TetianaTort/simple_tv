import 'package:flutter/material.dart';
import 'package:simple_tv/config/resources/app_colors.dart';
import 'package:simple_tv/config/resources/app_text_styles.dart';
import 'package:simple_tv/config/resources/dimensions.dart';

ThemeData get theme => ThemeData().copyWith(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        error: AppColors.error,
        onError: AppColors.onError,
        background: AppColors.background,
        onBackground: AppColors.onBackground,
        surface: AppColors.surface,
        onSurface: AppColors.onSurface,
        inverseSurface: AppColors.inverseSurface,
        surfaceVariant: AppColors.surfaceVariant,
        onSecondaryContainer: AppColors.onSecondaryContainer,
      ),
      textTheme: const TextTheme().copyWith(
        headlineLarge: AppTextStyles.headlineLarge,
        headlineMedium: AppTextStyles.headlineMedium,
        headlineSmall: AppTextStyles.headlineSmall,
        titleMedium: AppTextStyles.titleMedium,
        titleSmall: AppTextStyles.titleSmall,
        bodyMedium: AppTextStyles.bodyMedium,
        bodySmall: AppTextStyles.bodySmall,
      ),
      scaffoldBackgroundColor: AppColors.primary,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.onPrimary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.primary,
        hintStyle:
            AppTextStyles.bodyMedium.copyWith(color: AppColors.inverseSurface),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.secondary,
            width: Dimensions.gapXXS,
          ),
          borderRadius: BorderRadius.circular(Dimensions.radiusM),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.surfaceVariant,
            width: Dimensions.gapXXS,
          ),
          borderRadius: BorderRadius.circular(Dimensions.radiusM),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.surfaceVariant,
            width: Dimensions.gapXXS,
          ),
          borderRadius: BorderRadius.circular(Dimensions.radiusM),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.error,
            width: Dimensions.gapXXS,
          ),
          borderRadius: BorderRadius.circular(Dimensions.radiusM),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.error,
            width: Dimensions.gapXXS,
          ),
          borderRadius: BorderRadius.circular(Dimensions.radiusM),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: Dimensions.paddingM),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.surfaceVariant;
              } else {
                return AppColors.onPrimary;
              }
            },
          ),
          textStyle: MaterialStateProperty.all(AppTextStyles.headlineSmall),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: Dimensions.paddingS),
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(Dimensions.radiusM),
              ),
            ),
          ),
        ),
      ),
    );
