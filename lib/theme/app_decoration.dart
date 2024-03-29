import 'package:flutter/material.dart';
import 'package:ludo_king_clone/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90003,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo900,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue800,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal200,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.2),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray90004,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray800 => BoxDecoration(
        color: appTheme.blue800,
        border: Border.all(
          color: appTheme.gray800,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.lime900E501,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.indigo900,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 3.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900E5,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              6,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.indigo90002,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary10 => BoxDecoration(
        color: appTheme.indigo900,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary11 => BoxDecoration(
        color: appTheme.gray10019,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary12 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 3.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.indigo90002,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        color: appTheme.indigo900,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary4 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary5 => BoxDecoration(
        color: appTheme.gray900,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary6 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary7 => BoxDecoration(
        color: appTheme.indigo900,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 3.h,
        ),
      );
  static BoxDecoration get outlinePrimary8 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary9 => BoxDecoration(
        color: appTheme.indigo900.withOpacity(0.8),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 3.h,
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL15 => BorderRadius.only(
        topLeft: Radius.circular(15.h),
        topRight: Radius.circular(5.h),
        bottomLeft: Radius.circular(15.h),
        bottomRight: Radius.circular(5.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        3.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
