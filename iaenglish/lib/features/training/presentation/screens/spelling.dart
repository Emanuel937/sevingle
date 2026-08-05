import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/shared/widgets/closeButton.dart';
import 'package:iaenglish/shared/widgets/progressbar.dart';
import 'package:iaenglish/shared/widgets/stackcontainer.dart';
import 'package:provider/provider.dart';



class SpellingTrainingOption extends StatefulWidget {
  const SpellingTrainingOption({super.key});

  @override
  State<SpellingTrainingOption> createState() => _SpellingTrainingOptionState();
}

class _SpellingTrainingOptionState extends State<SpellingTrainingOption> {
  final TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    final colors = context.watch<ThemeProvider>().colors;
    return Stackcontainer(
      posTop: 120,
      headerNavigation: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             CupertinoText.large(context, "Exercise n"),
            XCloseButton(context: context, colors: colors)
        
          ],
          ProgressionBar(context)
        )
       
      ],
       enableSearchInput: false,
      child: Text("hello"),
      
      );

  }}
