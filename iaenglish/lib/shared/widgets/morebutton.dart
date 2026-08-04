import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:provider/provider.dart';

Widget CategoryNavigateButton(BuildContext context, VoidCallback onTap) {
  final colors = context.read<ThemeProvider>().colors;

  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(10),
    
      decoration: BoxDecoration(
       color: colors.onBackground.withOpacity(0.06),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: colors.shadow.withOpacity(0.010),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Transform.rotate(
        angle: 24, // vers la droite (normal)
        child: Icon(
          CupertinoIcons.arrow_right,
          size: 18,
          color: colors.onBackground.withOpacity(0.6),
        
        ),
      ),
    ),
  );
}

