import 'package:flutter/material.dart';
import 'package:faz/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5001,
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA200,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange200,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple10001,
      );
  static BoxDecoration get fillDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurpleA200,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA10001,
      );
  static BoxDecoration get fillOrangeA => BoxDecoration(
        color: appTheme.orangeA200,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple100,
      );
  static BoxDecoration get fillPurpleA => BoxDecoration(
        color: appTheme.purpleA200,
      );
  static BoxDecoration get fillTealA => BoxDecoration(
        color: appTheme.tealA100,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueToBlue => BoxDecoration(
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(1.03, 0.54),
          end: Alignment(0, 0.59),
          colors: [
            appTheme.blue50,
            appTheme.gray5003,
            appTheme.blue50,
          ],
        ),
      );
  static BoxDecoration get gradientDeepPurpleToPurpleA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.06, 0.22),
          end: Alignment(1.24, 1.32),
          colors: [
            appTheme.deepPurple600,
            appTheme.purpleA10001,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToTealA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.35, -0.06),
          end: Alignment(1.16, 1.06),
          colors: [
            appTheme.indigoA100,
            appTheme.tealA10001,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.gray5001,
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get circleBorder54 => BorderRadius.circular(
        54.h,
      );
  static BorderRadius get circleBorder63 => BorderRadius.circular(
        63.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL32 => BorderRadius.vertical(
        top: Radius.circular(32.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        3.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
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
    