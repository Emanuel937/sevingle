
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/shared/widgets/closeButton.dart';
import 'package:iaenglish/shared/widgets/progressbar.dart';
import 'package:iaenglish/shared/widgets/stackcontainer.dart';
import 'package:provider/provider.dart';


class Exercisecontainer extends StatefulWidget {

  final Widget child; 
  const Exercisecontainer({super.key, required this.child});
  @override
  State<Exercisecontainer> createState() => _Exercisecontainer();

}

class _Exercisecontainer extends State<Exercisecontainer> {
  final TextEditingController answerController = TextEditingController();
  @override
  Widget build(BuildContext context) {
 final colors = context.watch<ThemeProvider>().colors;
   
    return Stackcontainer(
      posTop: 160,
      headerNavigation: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             CupertinoText.large(context, "Exercise n"),
            XCloseButton(context: context, colors: colors)
          ],
        ),
        CupertinoProgressBar(value: 50, colors:colors)
      ],
      enableSearchInput: false,
      child:  widget.child
    );
  }}


/*
DefinitionExerciseCard(
        definition: "Holding something quickly",
        controller: answerController,
        accentColor: colors.secondary,
        onHelpPressed: () {
          // show hint, modal, tooltip, etc.
        },
      )*/