import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';

class LightColors implements BaseColors {

  @override
  final Color homeStackFirstChildBackground = const Color.fromRGBO(252, 250, 246, 1);

  @override
  final Color homeStackSecondChildBackground = const Color.fromARGB(255, 255, 255, 255);

  @override
  final Color cardTitle = CupertinoColors.black;

  @override
  final Color cardDescription = const Color.fromARGB(255, 116, 114, 114);

  @override
  final Color cardLabelBackground = const Color(0xFF6C63FF).withOpacity(0.1);

  @override
  final Color cardLabelText = const Color(0xFF6C63FF);

  @override
  final Color cardBackground = const Color.fromARGB(255, 255, 255, 255);

  @override
  final Color background = const Color(0xFFFCFAF6);

  @override
  final Color primary = const Color(0xFF041414);

  @override
  final Color text = Colors.black;

  @override
  final Color iconInactive = const Color(0xFF9E9E9E);

  @override
  final Color navigationItensBackground = const Color.fromARGB(249, 20, 20, 89);

  @override
  final Color navigationItensText = const Color.fromARGB(255, 16, 16, 115);

  @override
  final Color navigationItensIcon = const Color.fromARGB(255, 255, 255, 255);

  @override
  final Color buttonBackground = const Color(0xFF4CAF50);

  @override
  final Color buttonText = Colors.white;

  @override
  final Color headerBackground = const Color(0xFF03A9F4);

  @override
  final Color footerBackground = const Color(0xFF607D8B);

  @override
  final Color primaryShadown = Colors.black.withOpacity(0.05);

  @override
  final Color navigationBarShadown = const Color(0xFF607D8B);

  @override
  final Color topNavigationBackground = Colors.white;

  @override
  final Color topNavigationText = Colors.black.withOpacity(0.1);

  @override
  final Color topNavigationIcon = Colors.white;

  @override
  final Color topNavigationActiveIcon = const Color.fromRGBO(4, 20, 20, 1);

  @override
  final Color topNavigationInActiveIcon = const Color.fromRGBO(158, 158, 158, 1);

  @override
  final double offSet = 10.00;

  @override
  final Color scaffoldPageBackground = const Color(0xFFFCFAF6);
}
