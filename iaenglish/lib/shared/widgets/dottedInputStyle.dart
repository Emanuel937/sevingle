 import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:provider/provider.dart';

/// --- Letter Boxes Input ---
 /// 
 /// 
 
 class DottedInputstyle extends StatefulWidget{
    final TextEditingController controller;
    DottedInputstyle({  required this.controller,});
    State<DottedInputstyle> createState() => _DottedInputStyleState();
    
 }


 class _DottedInputStyleState extends State<DottedInputstyle> {

      late String correctWord;
      late List<String> letters;
      late List<FocusNode> focusNodes;
      late int revealedIndex;

      @override
      void initState() {
        super.initState();

        /// --- CORRECT WORD FIXED HERE ---
        correctWord = "grab";   // <--- EXACTLY AS YOU ASKED

        letters = List.filled(correctWord.length, "");
        focusNodes = List.generate(correctWord.length, (_) => FocusNode());

        /// Reveal one random letter
        final random = Random();
        revealedIndex = random.nextInt(correctWord.length);
        letters[revealedIndex] = correctWord[revealedIndex];

        widget.controller.text = letters.join();
      }


      @override
      Widget build(BuildContext context){
      final colors = context.watch<ThemeProvider>().colors;

      return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(correctWord.length, (index) {
                return Container(
                  width: 40,
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: colors.onBackground,
                        width: 1,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: CupertinoTextField(
                    focusNode: focusNodes[index],
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    controller: TextEditingController(text: letters[index]),
                    onChanged: (value) {
                      letters[index] = value;

                      /// Update main controller
                      widget.controller.text = letters.join();

                      /// --- MOVE RIGHT WHEN TYPING ---
                      if (value.isNotEmpty && index < correctWord.length - 1) {
                        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                      }

                      /// --- MOVE LEFT WHEN DELETING ---
                      if (value.isEmpty && index > 0) {
                        FocusScope.of(context).requestFocus(focusNodes[index - 1]);
                      }
                    },
                    decoration: const BoxDecoration(
                      color: CupertinoColors.white,
                    ),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }),
            ),
          );
      }

 }