import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/features/training/presentation/widgets/exerciseContainer.dart';
import 'package:iaenglish/features/training/presentation/widgets/listingExerciseCard.dart';
import 'package:provider/provider.dart';

class ListeningExerciseScreen extends StatefulWidget{
  const ListeningExerciseScreen({super.key});
 @override
 State<ListeningExerciseScreen> createState() => _ListeningExerciseScreen();
}

class _ListeningExerciseScreen extends State<ListeningExerciseScreen>{
  @override
  Widget build(BuildContext context){
  final colors = context.watch<ThemeProvider>().colors;
   
  
   
    return Exercisecontainer(
      child: ListeningExercise(
            audioUrl:
                "https://cdn.pixabay.com/download/audio/2022/03/15/audio_7c0e1c7e4b.mp3",
            questions: [
              {"question": "What is the main topic of the audio?"},
              {"question": "Who is speaking?"},
            ],
            controllers: {
              0: TextEditingController(),
              1: TextEditingController(),
              2: TextEditingController(),
            },
            onHelpPressed: () {},
            accentColor: colors.onBackground.withOpacity(0.06),
          
    ));
  }
}