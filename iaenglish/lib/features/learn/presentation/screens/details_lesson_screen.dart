import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/features/learn/presentation/widgets/grammarContainer.dart';
import 'package:iaenglish/features/learn/presentation/widgets/sliderWordContainer.dart';
import 'package:iaenglish/features/learn/presentation/widgets/text.dart';
import 'package:iaenglish/shared/widgets/closeButton.dart';
import 'package:iaenglish/shared/widgets/slider.dart';
import 'package:iaenglish/shared/widgets/stackcontainer.dart';
import 'package:provider/provider.dart';

class DetailsLessonScreen extends StatefulWidget {
  const DetailsLessonScreen({super.key});

  @override
  State<DetailsLessonScreen> createState() => _DetailsLessonScreen();
}

class _DetailsLessonScreen extends State<DetailsLessonScreen> {
  bool wishlist = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.watch<ThemeProvider>().colors;


    return Stackcontainer(
      posTop: 80,
      enableSearchInput: false,
      headerNavigation: [
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          CupertinoText.small(context, "1/5"),
          XCloseButton(colors: colors, context:context)
          ]
        ),
        SizedBox(height: 10)
      ],
      child: Center(
        child: CupertinoSliderWithDots(
          colors: colors,
          items: [
            SliderWordContainer(word: 'Container', colors: colors),
            SecondSliderContainer(
              title:"Title fo text",
              paragraph: "The user must understand, how to be a good levcel in english",
              colors: colors,
              imageUrl: "https://cdn.pixabay.com/photo/2024/09/17/09/34/boy-9053203_1280.png",
            ),
            GrammarContainer(
                colors: colors,
                title: "Present Perfect",
                rule: "We use the present perfect to talk about experiences or actions that have relevance now.",
                examples: [
                  "I have visited London.",
                  "She has just finished her homework.",
                  "We have lived here for 3 years.",
                ],
                mistakes: [
                  "❌ I have went →           ✔ I have gone",
                  "❌ She has ate →           ✔ She has eaten",
                ],
              )
          ],
        ),
      ),
    );
  }
}
