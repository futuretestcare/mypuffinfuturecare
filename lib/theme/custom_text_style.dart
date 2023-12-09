import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeExo => theme.textTheme.bodyLarge!.exo;
  static get bodyLargeExoBluegray800 => theme.textTheme.bodyLarge!.exo.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static get bodyLargeExoGray50001 => theme.textTheme.bodyLarge!.exo.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyLargeExoLime200 => theme.textTheme.bodyLarge!.exo.copyWith(
        color: appTheme.lime200,
      );
  static get bodyLargeExoOnError => theme.textTheme.bodyLarge!.exo.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w200,
      );
  static get bodyLargeExoOnPrimary => theme.textTheme.bodyLarge!.exo.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargeExoRedA100 => theme.textTheme.bodyLarge!.exo.copyWith(
        color: appTheme.redA100,
      );
  static get bodyLargeExoWhiteA700 => theme.textTheme.bodyLarge!.exo.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeWhiteA70018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w200,
      );
  static get bodyMediumManrope => theme.textTheme.bodyMedium!.manrope;
  static get bodyMediumManropeGray50001 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumManropeOnPrimary =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumManropeOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumManropeOnPrimary_1 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumManropeTeal200 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: appTheme.teal200,
      );
  static get bodyMediumManropeTeal200_1 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: appTheme.teal200,
      );
  static get bodyMediumManropeWhiteA700 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumOnPrimaryContainerExtraLight =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w200,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumWhiteA700ExtraLight =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w200,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
        fontSize: 11.fSize,
      );
  // Display text style
  static get displaySmallCyan600 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.cyan600,
      );
  static get displaySmallPrimary => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Exo text style
  static get exoLightgreenA700 => TextStyle(
        color: appTheme.lightGreenA700,
        fontSize: 80.fSize,
        fontWeight: FontWeight.w400,
      ).exo;
  static get exoWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 80.fSize,
        fontWeight: FontWeight.w400,
      ).exo;
  static get exoYellow800 => TextStyle(
        color: appTheme.yellow800,
        fontSize: 80.fSize,
        fontWeight: FontWeight.w400,
      ).exo;
  // Headline text style
  static get headlineLarge30 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 30.fSize,
      );
  static get headlineLargeMedium => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 30.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeSemiBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineLargeWhiteA70030 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 30.fSize,
      );
  static get headlineSmallExoTeal200 =>
      theme.textTheme.headlineSmall!.exo.copyWith(
        color: appTheme.teal200,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBluegray50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray50001,
      );
  // Title text style
  static get titleLargeNotoSansOnPrimary =>
      theme.textTheme.titleLarge!.notoSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumRed60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red60001,
      );
  static get titleMediumYellow800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow800,
      );
  static get titleSmallTeal200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal200,
      );
}

extension on TextStyle {
  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get exo {
    return copyWith(
      fontFamily: 'Exo',
    );
  }

  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }
}
