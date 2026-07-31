 
 import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:provider/provider.dart';

Widget LightDarkButton({required BuildContext context }){
 return CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(CupertinoIcons.moon_fill),
          onPressed: () => context.read<ThemeProvider>().toggleTheme(),
        );

 }