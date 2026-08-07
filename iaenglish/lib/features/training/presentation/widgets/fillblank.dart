import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/shared/widgets/suggestiontag.dart';

class FillBlankExercise extends StatelessWidget {
  final List<Map<String, String>> exercises;
  final List<String> suggestions;
  final Map<int, TextEditingController> controllers;
  final VoidCallback onHelpPressed;
  final Color accentColor;

  const FillBlankExercise({
    super.key,
    required this.exercises,
    required this.suggestions,
    required this.controllers,
    required this.onHelpPressed,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.watch<ThemeProvider>().colors;

    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),

          CupertinoText.large(context, "Fill in the blank..."),

          const SizedBox(height: 25),

          /// SENTENCES WITH GREEN ROUNDED CARDS
          Column(
            children: [
              ...List.generate(
                exercises.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: accentColor, // green card
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Index number
                          Text(
                            "${index + 1}) ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: colors.background, // contrast on green
                            ),
                          ),

                          /// Sentence card
                          Expanded(
                            child: _sentenceCard(
                              context,
                              exercises[index]["sentence"]!,
                              controllers[index]!,
                              colors,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),

          CupertinoText.bodyText(
            context,
            "Suggestions:",
            copyWith: TextStyle(color: colors.onBackground),
          ),

          const SizedBox(height: 12),

          Wrap(
            spacing: 8,
            runSpacing: 10,
            children: suggestions
                .map(
                  (word) => SuggestionTag(
                    context: context,
                    text: word,
                  ),
                )
                .toList(),
          ),

          const SizedBox(height: 25),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: onHelpPressed,
                child: Icon(
                  CupertinoIcons.question_circle,
                  size: 28,
                  color: accentColor,
                ),
              ),
            ],
          ),

          CupertinoButton(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(8),
            child: Text(
              "Check",
              style: TextStyle(color: colors.background),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _sentenceCard(
    BuildContext context,
    String sentence,
    TextEditingController controller,
    dynamic colors,
  ) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 18,
          height: 1.5,
          color: colors.background, // white text inside green card
        ),
        children: _buildSentence(
          context,
          sentence,
          controller,
          colors,
        ),
      ),
    );
  }

  List<InlineSpan> _buildSentence(
    BuildContext context,
    String sentence,
    TextEditingController controller,
    dynamic colors,
  ) {
    final parts = sentence.split("{{blank}}");

    return [
      TextSpan(text: parts[0]),

      WidgetSpan(
        alignment: PlaceholderAlignment.middle,
        child: Container(
          width: 90,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: CupertinoTextField(
            controller: controller,
            textAlign: TextAlign.center,
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: colors.background, // underline matches card text
                  width: 1,
                ),
              ),
            ),
            style: TextStyle(
              fontSize: 18,
              color: colors.background,
            ),
          ),
        ),
      ),

      if (parts.length > 1) TextSpan(text: parts[1]),
    ];
  }
}
