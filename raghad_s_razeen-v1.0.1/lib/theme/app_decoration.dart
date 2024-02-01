import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueB => BoxDecoration(
        color: appTheme.blue50B2.withOpacity(0.98),
      );
  static BoxDecoration get fillBlueGrayC => BoxDecoration(
        color: appTheme.blueGray1004c,
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.85),
      );
  static BoxDecoration get fillOnSecondaryContainer1 => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.9),
      );
  static BoxDecoration get fillOnSecondaryContainer2 => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal100,
      );

  // Outline decorations
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.blue50B2,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary10 => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary11 => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary12 => BoxDecoration(
        color: appTheme.gray50.withOpacity(0.7),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.9),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration();
  static BoxDecoration get outlinePrimary4 => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary5 => BoxDecoration(
        color: appTheme.gray50.withOpacity(0.4),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary6 => BoxDecoration(
        color: appTheme.blue5066.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary7 => BoxDecoration(
        color: appTheme.blue50B2.withOpacity(0.98),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary8 => BoxDecoration(
        color: appTheme.blue5066,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary9 => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder45 => BorderRadius.circular(
        45.h,
      );
  static BorderRadius get circleBorder59 => BorderRadius.circular(
        59.h,
      );
  static BorderRadius get circleBorder68 => BorderRadius.circular(
        68.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get roundedBorder33 => BorderRadius.circular(
        33.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder52 => BorderRadius.circular(
        52.h,
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
    