import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700.withOpacity(0.84),
      );
  static get bodyMediumBalooChettan2PrimaryContainer =>
      theme.textTheme.bodyMedium!.balooChettan2.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumOnPrimaryContainer15 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  // Display text style
  static get displayMediumOnSecondaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w900,
      );
  // Headline text style
  static get headlineLarge32 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
      );
  static get headlineLargeOnSecondaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w900,
      );
  static get headlineLargeOnSecondaryContainerBlack =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.9),
        fontSize: 32.fSize,
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallBluegray700 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray700.withOpacity(0.4),
      );
  static get headlineSmallBluegray700Black =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w900,
      );
  // Title text style
  static get titleLargeBalooChettan2PrimaryContainer =>
      theme.textTheme.titleLarge!.balooChettan2.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBluegray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumBlack => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get titleMediumBluegray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray700.withOpacity(0.84),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get titleSmallBluegray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700.withOpacity(0.84),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray700SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700.withOpacity(0.84),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get balooChettan2 {
    return copyWith(
      fontFamily: 'Baloo Chettan 2',
    );
  }
}
