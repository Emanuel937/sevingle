import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';

class ListeningExercise extends StatelessWidget {
  final String audioUrl;
  final List<Map<String, String>> questions; // { "question": "...", "id": "..." }
  final Map<int, TextEditingController> controllers;
  final VoidCallback onHelpPressed;
  final Color accentColor;

  const ListeningExercise({
    super.key,
    required this.audioUrl,
    required this.questions,
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
          CupertinoText.large(context, "Listening Exercise"),
          const SizedBox(height: 20),
          /// AUDIO PLAYER CARD
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: accentColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.headphones,
                  color: colors.onBackground,
                  size: 32,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CupertinoText.title(context,
                    "Listen to the audio and answer the questions.",
                  ),
                ),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Icon(
                    CupertinoIcons.play_circle_fill,
                    color: colors.secondary,
                    size: 40,
                  ),
                  onPressed: () {
                    // TODO: integrate your audio player
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),
          /// QUESTIONS
          Column(
            children: [
              ...List.generate(
                questions.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: accentColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Number
                          Text(
                            "${index + 1}) ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: colors.onBackground,
                            ),
                          ),

                          /// Question + Answer Field
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  questions[index]["question"]!,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: colors.onBackground,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                CupertinoTextField(
                                  controller: controllers[index],
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 6,
                                    horizontal: 10,
                                  ),
                                  style: TextStyle(
                                    color: colors.background,
                                    fontSize: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: colors.onBackground,
                                        width: 0.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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

          const SizedBox(height: 20),

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
}
