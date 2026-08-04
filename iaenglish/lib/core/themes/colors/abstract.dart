import 'package:flutter/cupertino.dart';
// Utilisation d'une classe abstraite ou interface au lieu d'un typedef avec une syntaxe incorrecte
abstract class BaseColorsOld {

  Color get homeStackFirstChildBackground;
  Color get homeStackSecondChildBackground;
  Color get background;
  Color get primary;
  Color get text;
  Color get iconInactive;
  Color get scaffoldPageBackground;
  Color get cardTitle;
  Color get cardDescription;
  Color get cardLabelBackground;
  Color get cardLabelText;
  Color get navigationItensBackground;
  Color get navigationItensText;
  Color get navigationItensIcon;
  Color get buttonBackground;
  Color get buttonText;
  Color get headerBackground;
  Color get footerBackground;
  Color  get primaryShadown;
  Color get navigationBarShadown;
  Color get cardBackground ;
  Color get topNavigationBackground;
  Color get topNavigationText;
  Color get topNavigationIcon;
  Color get topNavigationActiveIcon;
  Color get topNavigationInActiveIcon;

  double get offSet;

}


abstract class BaseColors {
  // Core scheme
  Color get primary;
  Color get onPrimary;
  Color get primaryContainer;
  Color get onPrimaryContainer;

  Color get secondary;
  Color get onSecondary;
  Color get secondaryContainer;
  Color get onSecondaryContainer;

  Color get tertiary;
  Color get onTertiary;
  Color get tertiaryContainer;
  Color get onTertiaryContainer;

  Color get error;
  Color get onError;
  Color get errorContainer;
  Color get onErrorContainer;

  // Background & Surface
  Color get background;
  Color get onBackground;

  Color get surface;
  Color get onSurface;

  Color get surfaceVariant;
  Color get onSurfaceVariant;

  Color get surfaceTint;

  // Shadows
  Color get shadow;

  // Extra (optional)
  double get elevationOffset;
}

