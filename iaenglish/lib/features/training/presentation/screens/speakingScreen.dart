import 'package:flutter/cupertino.dart';
import 'package:iaenglish/features/training/presentation/widgets/exerciseContainer.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
// shadown exercise
import 'dart:ui';


class SpeakingScreen extends StatefulWidget {

  State<SpeakingScreen> createState () => _SpeakingScreen();
}

class _SpeakingScreen extends State<SpeakingScreen>{

  @override
  Widget build(BuildContext context) {
    final colors = context.watch<ThemeProvider>().colors;
   
    return Exercisecontainer(
      child: ShadowingExercise(
  audioUrl: "https://cdn.pixabay.com/download/audio/2022/03/15/audio_7c0e1c7e4b.mp3",
  sentence: "The weather is beautiful today.",
  onHelpPressed: () {},
  accentColor: colors.secondary,
),

    
);
  }
  
}

class ShadowingExercise extends StatefulWidget {
  final String audioUrl;
  final String sentence;
  final VoidCallback onHelpPressed;
  final Color accentColor;

  const ShadowingExercise({
    super.key,
    required this.audioUrl,
    required this.sentence,
    required this.onHelpPressed,
    required this.accentColor,
  });

  @override
  State<ShadowingExercise> createState() => _ShadowingExerciseState();
}

class _ShadowingExerciseState extends State<ShadowingExercise> {
  bool isRecording = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.watch<ThemeProvider>().colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CupertinoText.title(context, "Shadowing Exercise"),

        const SizedBox(height: 20),

        /// GLASS CARD — LISTEN
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: colors.background.withOpacity(0.15),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: colors.onBackground.withOpacity(0.08),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Listen",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: colors.onBackground,
                    ),
                  ),
                  const SizedBox(height: 12),

                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.speaker_2_fill,
                        size: 32,
                        color: colors.secondary,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          widget.sentence,
                          style: TextStyle(
                            fontSize: 18,
                            color: colors.onBackground,
                          ),
                        ),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          // TODO: play audio
                        },
                        child: Icon(
                          CupertinoIcons.play_circle_fill,
                          size: 42,
                          color: colors.secondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        const SizedBox(height: 30),

        /// GLASS CARD — SPEAK
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: colors.background.withOpacity(0.15),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: colors.onBackground.withOpacity(0.08),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Repeat",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: colors.onBackground,
                    ),
                  ),

                  const SizedBox(height: 20),

                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() => isRecording = !isRecording);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeOut,
                      child: Icon(
                        isRecording
                            ? CupertinoIcons.stop_circle_fill
                            : CupertinoIcons.mic_circle_fill,
                        size: isRecording ? 80 : 70,
                        color: widget.accentColor,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    isRecording ? "Recording..." : "Tap to start speaking",
                    style: TextStyle(
                      fontSize: 16,
                      color: colors.onBackground.withOpacity(0.8),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: widget.onHelpPressed,
                        child: Icon(
                          CupertinoIcons.question_circle,
                          size: 28,
                          color: colors.secondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// speaking read exercise 
class SpeakingReadExercise extends StatefulWidget {
  final String sentence;
  final VoidCallback onHelpPressed;
  final Color accentColor;

  const SpeakingReadExercise({
    super.key,
    required this.sentence,
    required this.onHelpPressed,
    required this.accentColor,
  });

  @override
  State<SpeakingReadExercise> createState() => _SpeakingReadExerciseState();
}

class _SpeakingReadExerciseState extends State<SpeakingReadExercise> {
  bool isRecording = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.watch<ThemeProvider>().colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.sentence,
          style: TextStyle(
            fontSize: 18,
            color: colors.onBackground,
          ),
        ),
        const SizedBox(height: 20),

        /// Microphone icon only green
        Center(
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() => isRecording = !isRecording);
            },
            child: Icon(
              isRecording
                  ? CupertinoIcons.stop_circle_fill
                  : CupertinoIcons.mic_circle_fill,
              size: 70,
              color: widget.accentColor, // green only here
            ),
          ),
        ),

        const SizedBox(height: 10),

        Center(
          child: Text(
            isRecording ? "Recording..." : "Tap to start speaking",
            style: TextStyle(
              fontSize: 16,
              color: colors.onBackground,
            ),
          ),
        ),

        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: widget.onHelpPressed,
              child: Icon(
                CupertinoIcons.question_circle,
                size: 28,
                color: widget.accentColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


// real time conversation 
class SpeakingConversationExercise extends StatefulWidget {
  final Color accentColor;
  final VoidCallback onHelpPressed;

  const SpeakingConversationExercise({
    super.key,
    required this.accentColor,
    required this.onHelpPressed,
  });

  @override
  State<SpeakingConversationExercise> createState() =>
      _SpeakingConversationExerciseState();
}

class _SpeakingConversationExerciseState
    extends State<SpeakingConversationExercise> {
  bool isTalking = false;
  int secondsLeft = 300; // 5 minutes

  @override
  Widget build(BuildContext context) {
    final colors = context.watch<ThemeProvider>().colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CupertinoText.title(context, "AI Conversation (5 min)"),

        const SizedBox(height: 10),

        Text(
          "Speak freely. The AI will respond in real time.",
          style: TextStyle(
            fontSize: 18,
            color: colors.onBackground,
          ),
        ),

        const SizedBox(height: 20),

        Center(
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                isTalking = !isTalking;
              });
            },
            child: Icon(
              isTalking
                  ? CupertinoIcons.stop_circle_fill
                  : CupertinoIcons.mic_circle_fill,
              size: 70,
              color: widget.accentColor,
            ),
          ),
        ),

        const SizedBox(height: 10),

        Center(
          child: Text(
            isTalking
                ? "Conversation running..."
                : "Tap to start conversation",
            style: TextStyle(
              fontSize: 16,
              color: colors.onBackground,
            ),
          ),
        ),

        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: widget.onHelpPressed,
              child: Icon(
                CupertinoIcons.question_circle,
                size: 28,
                color: widget.accentColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}



/**
 * Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SpeakingShowExercise(
      instruction: "Describe your last weekend.",
      onHelpPressed: () {},
    ),

    const SizedBox(height: 30),

    SpeakingReadExercise(
      sentence: "I went to the beach and enjoyed the sun.",
      onHelpPressed: () {},
      accentColor: colors.secondary,
    ),

    const SizedBox(height: 30),

    SpeakingConversationExercise(
      accentColor: colors.secondary,
      onHelpPressed: () {},
    ),
  ],
)

 */