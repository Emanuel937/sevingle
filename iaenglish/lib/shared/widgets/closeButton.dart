import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';

Widget XCloseButton({required BuildContext context, required BaseColors colors}){ 
  return IconButton(
      onPressed:(){
        Navigator.pop(context);
      }, 
      icon: Icon(Icons.close,
      color: colors.onBackground.withOpacity(0.5),
        )
      );
}