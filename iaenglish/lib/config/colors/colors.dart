import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Utilisation d'une classe abstraite ou interface au lieu d'un typedef avec une syntaxe incorrecte
abstract class BaseColors {

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

class LightColors implements BaseColors {

  final scaffoldPageBackground              = const Color.fromRGBO(252, 250, 246, 1);
  @override
  final Color homeStackFirstChildBackground  = const Color.fromRGBO(252, 250, 246, 1);
  @override
  final Color homeStackSecondChildBackground = const Color.fromARGB(255, 255, 255, 255);
  
  @override
  final Color cardTitle                      =  CupertinoColors.black;
  @override
  final Color cardDescription                = CupertinoColors.systemGrey;
  @override
  final Color cardLabelBackground            = const Color(0xFF6C63FF).withOpacity(0.1);
  @override
  final Color cardLabelText                  = Color(0xFF6C63FF);

  @override
  final Color cardBackground                 = const Color.fromARGB(255, 255, 255, 255);


  @override
  final Color background                      = const Color(0xFFFCFAF6);
  @override
  final Color primary               = const Color(0xFF041414);
  @override
  final Color text = Colors.black;
  @override
  final Color iconInactive = const Color(0xFF9E9E9E);

  @override
  final Color navigationItensBackground = Color.fromARGB(249, 20, 20, 89);
  @override
  final Color navigationItensText = Color.fromARGB(255, 16, 16, 115);
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
  final Color primaryShadown   = Colors.black.withOpacity(0.05);


  @override
  final Color navigationBarShadown          = const Color(0xFF607D8B);

  @override
  final   Color  topNavigationBackground    = Colors.white;
  @override
  final   Color  topNavigationText          = Colors.black.withOpacity(0.1);
  @override
  final   Color  topNavigationIcon          = Colors.white;
  @override
  final  Color   topNavigationActiveIcon     = const Color.fromRGBO(4, 20, 20, 1);
  @override
  final  Color   topNavigationInActiveIcon   = const Color.fromRGBO(158, 158, 158, 1);

  @override
   final double  offSet = 10.00;



}

class DarkColors implements BaseColors {
  @override
  final scaffoldPageBackground = const Color.fromARGB(255, 7, 61, 97);
  @override
  final Color homeStackFirstChildBackground = const Color.fromARGB(255, 7, 61, 97);
  @override
  final Color homeStackSecondChildBackground = const Color.fromARGB(255, 4, 55, 89);
  
  @override
  final Color cardTitle       =  Color.fromARGB(195, 14, 233, 131);
  @override
  final Color cardDescription = Colors.white;
  @override
  final Color cardLabelBackground = const Color.fromARGB(255, 99, 255, 182).withOpacity(0.2);
  @override
  final Color  cardLabelText     = Color.fromARGB(255, 6, 229, 162);
   final Color cardBackground   = const Color.fromRGBO(1,1, 1, 0.2);

  @override
  final Color background = const Color(0xFF1E1E1E);
  @override
  final Color primary = const Color(0xFFFFFFFF);
  @override
  final Color text = Colors.white;
  @override
  final Color iconInactive = Color.fromARGB(255, 32, 228, 170);

  @override
  final Color navigationItensBackground  = Color.fromARGB(249, 20, 20, 89);
  @override
  final Color navigationItensText  = const Color.fromARGB(255, 255, 255, 255);
  @override
  final Color navigationItensIcon  = const Color.fromARGB(255, 255, 255, 255);

  @override
  final Color buttonBackground     = const Color(0xFF9C27B0);
  @override
  final Color buttonText           = Colors.white;

  @override
  final Color headerBackground     = const Color(0xFF212121);
  @override
  final Color footerBackground     = const Color(0xFF37474F);
    @override
  final Color primaryShadown       = const Color.fromARGB(83, 120, 96, 139);


  @override
  final Color navigationBarShadown = const Color(0xFF607D8B);


  @override
  final   Color topNavigationBackground    = const Color.fromARGB(255, 7, 61, 97);
  @override
  final   Color topNavigationText          = Colors.white;
  @override
  final   Color  topNavigationIcon         = Colors.white;
  @override
  final  Color  topNavigationActiveIcon    =  Color.fromARGB(255, 32, 228, 170);
  @override
  final  Color  topNavigationInActiveIcon  = Colors.white;

  @override
  final double  offSet = 0.00;

}
