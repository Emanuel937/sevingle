import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/shared/widgets/dottedInputStyle.dart';
import 'package:provider/provider.dart';

class DefinitionExerciseCard extends StatefulWidget {
  final String definition; 
  final TextEditingController controller;
  final VoidCallback onHelpPressed;
  final Color accentColor;

  const DefinitionExerciseCard({
    super.key,
    required this.definition,
    required this.controller,
    required this.onHelpPressed,
    required this.accentColor,
  });

  @override
  State<DefinitionExerciseCard> createState() => _DefinitionExerciseCardState();
}

class _DefinitionExerciseCardState extends State<DefinitionExerciseCard> {


  @override
  Widget build(BuildContext context) {
    final colors = context.watch<ThemeProvider>().colors;
    final TextEditingController answerController = TextEditingController();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        CupertinoText.title(context, "Type the right word that is keeping with the definition"),
        const SizedBox(height: 30),

        /// --- Definition Card ---
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: colors.onBackground.withOpacity(0.04),
            border: Border(
              left: BorderSide(
                color: widget.accentColor,
                width: 4,
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: widget.accentColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  CupertinoIcons.lightbulb_fill,
                  color: widget.accentColor,
                  size: 26,
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: CupertinoText.bodyText(
                  context,
                  widget.definition,
                  copyWith: TextStyle(
                    fontSize: 17,
                    color: colors.onBackground,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),
         DottedInputstyle(controller:answerController),
        const SizedBox(height: 20),

        /// --- Help Icon ---
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CupertinoButton(
              padding: const EdgeInsets.all(6),
              minSize: 0,
              onPressed: widget.onHelpPressed,
              child: Icon(
                CupertinoIcons.question_circle,
                color: widget.accentColor,
                size: 26,
              ),
            ),
          ],
        ),

        CupertinoButton(
          color: colors.secondary,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          borderRadius: BorderRadius.circular(3),
          child: Text(
            'Check',
            style: TextStyle(color: colors.background),
          ),
          onPressed: () {
            print(answerController.text);
          },
        ),
      ],
    );
  }
}
