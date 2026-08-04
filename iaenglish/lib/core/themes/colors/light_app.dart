import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';

class LightColors implements BaseColors {

  // ------------------ CORE COLOR SCHEME ------------------

  @override
  final Color primary = const Color.fromARGB(255, 13, 82, 255);

  @override
  final Color onPrimary = Colors.white;

  @override
  final Color primaryContainer = const Color(0xFF6C63FF).withOpacity(0.15);

  @override
  final Color onPrimaryContainer = const Color(0xFF6C63FF);

  @override
  final Color secondary = const Color(0xFF4CAF50);

  @override
  final Color onSecondary = Colors.white;

  @override
  final Color secondaryContainer = const Color(0xFF4CAF50).withOpacity(0.15);

  @override
  final Color onSecondaryContainer = const Color(0xFF4CAF50);

  @override
  final Color tertiary =  CupertinoColors.activeBlue;

  @override
  final Color onTertiary = Colors.white;

  @override
  final Color tertiaryContainer = const Color(0xFF607D8B).withOpacity(0.15);

  @override
  final Color onTertiaryContainer = const Color(0xFF607D8B);

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
  final Color background = const Color(0xFFFCFAF6);

  @override
  final Color onBackground = Colors.black;

  @override
  final Color surface = const Color.fromARGB(255, 255, 255, 255);

  @override
  final Color onSurface = Colors.black;

  @override
  final Color surfaceVariant = const Color.fromARGB(255, 251, 251, 251);

  @override
  final Color onSurfaceVariant = const Color.fromARGB(255, 104, 94, 94);

  @override
  final Color surfaceTint =  CupertinoColors.systemTeal;





  // ------------------ SHADOW ------------------

  @override
  final Color shadow = Colors.black.withOpacity(0.05);


  // ------------------ ELEVATION ------------------

  @override
  final double elevationOffset = 10.0;


}

