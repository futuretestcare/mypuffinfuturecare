import 'package:flutter/material.dart';
import 'package:mypuffinfuturecare/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.gray100,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.gray100,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray50001 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray50001,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineGray500011 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray50001,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: appTheme.greenA100,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary10 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary2 => BoxDecoration(
        color: appTheme.amber100,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary3 => BoxDecoration(
        color: appTheme.teal50,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary4 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary5 => BoxDecoration(
        color: appTheme.teal200.withOpacity(0.41),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary6 => BoxDecoration(
        color: appTheme.deepOrange50,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary7 => BoxDecoration(
        color: appTheme.yellow50,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary8 => BoxDecoration(
        color: appTheme.green50,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary9 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnSecondaryContainer => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onSecondaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              3,
            ),
          ),
        ],
      );

  // Under decorations
  static BoxDecoration get underLineOnPrimaryContainer => BoxDecoration();
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL6 => BorderRadius.vertical(
        top: Radius.circular(6.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
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
