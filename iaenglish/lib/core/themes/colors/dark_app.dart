import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';

class DarkColors implements BaseColors {

  // ------------------ CORE COLOR SCHEME ------------------

  @override
  final Color primary = const Color(0xFFFFFFFF); // old: primary

  @override
  final Color onPrimary = Colors.black; // old: buttonText

  @override
  final Color primaryContainer =
      const Color.fromARGB(255, 99, 255, 182).withOpacity(0.2); // old: cardLabelBackground

  @override
  final Color onPrimaryContainer =
      const Color.fromARGB(255, 6, 229, 162); // old: cardLabelText

  @override
  final Color secondary = const Color(0xFF9C27B0); // old: buttonBackground

  @override
  final Color onSecondary = Colors.white; // old: buttonText

  @override
  final Color secondaryContainer =
      const Color(0xFF9C27B0).withOpacity(0.2); // mapped

  @override
  final Color onSecondaryContainer = const Color(0xFF9C27B0); // mapped

  @override
  final Color tertiary = const Color(0xFF37474F); // old: footerBackground

  @override
  final Color onTertiary = Colors.white;

  @override
  final Color tertiaryContainer =
      const Color(0xFF37474F).withOpacity(0.2);

  @override
  final Color onTertiaryContainer = const Color(0xFF37474F);


  @override
  final Color error = const Color(0xFFB00020);

  @override
  final Color onError = Colors.white;

  @override
  final Color errorContainer = const Color(0xFFCF6679);

  @override
  final Color onErrorContainer = Colors.black;


  // ------------------ BACKGROUND & SURFACE ------------------

  @override
  final Color background = const Color(0xFF1E1E1E); // old: background

  @override
  final Color onBackground = Colors.white; // old: text

  @override
  final Color surface = const Color.fromRGBO(1, 1, 1, 0.2); // old: cardBackground

  @override
  final Color onSurface = Colors.white; // old: cardDescription

  @override
  final Color surfaceVariant =
      const Color.fromARGB(255, 7, 61, 97); // old: homeStackFirstChildBackground

  @override
  final Color onSurfaceVariant =
      const Color.fromARGB(255, 4, 55, 89); // old: homeStackSecondChildBackground

  @override
  final Color surfaceTint = const Color(0xFFFFFFFF); // mapped from primary


  // ------------------ SHADOW ------------------

  @override
  final Color shadow = const Color.fromARGB(83, 120, 96, 139); // old: primaryShadown


  // ------------------ ELEVATION ------------------

  @override
  final double elevationOffset = 0.00; // old: offSet
}
