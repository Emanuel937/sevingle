
import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:provider/provider.dart';

Widget SuggestionTag({required BuildContext context, required String text}){

  final colors = context.watch<ThemeProvider>().colors;

  return Container(
    padding: EdgeInsets.only(left: 20, right: 20, top:5, bottom: 5),
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
      color: colors.onBackground.withOpacity(0.07),
      borderRadius: BorderRadius.circular(50)
    ),
    child:CupertinoText.caption(
      context,
       text,
       copyWith: TextStyle(
        color: colors.onBackground.withOpacity(1)
       )
       )
  );
}