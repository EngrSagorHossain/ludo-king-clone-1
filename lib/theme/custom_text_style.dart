import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get bodyMediumRacingSansOne =>
      theme.textTheme.bodyMedium!.racingSansOne.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumRacingSansOnePrimary =>
      theme.textTheme.bodyMedium!.racingSansOne.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumYellow700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.yellow700,
        fontSize: 15.fSize,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallGray600018 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
        fontSize: 8.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallOnPrimaryContainer10 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineSmallRacingSansOneLime900e5 =>
      theme.textTheme.headlineSmall!.racingSansOne.copyWith(
        color: appTheme.lime900E5,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeBlueA20001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA20001,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargeOnPrimaryContainer13 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 13.fSize,
      );
  static get labelLargeOnPrimaryContainerMedium =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumMedium => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelMediumYellow700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.yellow700,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 8.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallGray600 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get labelSmallOnPrimaryContainer =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelSmallOnPrimaryContainerMedium =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallOnPrimaryContainerMedium8 =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 8.fSize,
        fontWeight: FontWeight.w500,
      );
  // Roboto text style
  static get robotoAmber600 => TextStyle(
        color: appTheme.amber600,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).roboto;
  static get robotoBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w400,
      ).roboto;
  static get robotoOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).roboto;
  static get robotoOnPrimaryContainerSemiBold => TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w600,
      ).roboto;
  static get robotoYellow700 => TextStyle(
        color: appTheme.yellow700,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w600,
      ).roboto;
  // Title text style
  static get titleLarge23 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
      );
  static get titleLargeRacingSansOnePrimary =>
      theme.textTheme.titleLarge!.racingSansOne.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeYellow700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.yellow700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 17.fSize,
      );
  static get titleMediumOnPrimaryContainer16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallYellow700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallYellow70014 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow700,
        fontSize: 14.fSize,
      );
  static get titleSmallYellow700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow700,
      );
}

extension on TextStyle {
  TextStyle get racingSansOne {
    return copyWith(
      fontFamily: 'Racing Sans One',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
