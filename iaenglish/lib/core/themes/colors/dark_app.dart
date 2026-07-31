import 'package:iaenglish/core/themes/colors/abstract.dart';
import 'package:flutter/material.dart';

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
