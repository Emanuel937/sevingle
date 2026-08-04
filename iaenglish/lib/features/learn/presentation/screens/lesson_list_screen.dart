import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/routes/routes_name.dart';
import 'package:iaenglish/features/learn/presentation/widgets/header.dart';
import 'package:iaenglish/shared/widgets/progressbar.dart';
import 'package:iaenglish/shared/widgets/stackcontainer.dart';
import 'package:iaenglish/shared/widgets/wordtile.dart';

class LessonListScreen extends StatefulWidget {
  const LessonListScreen({super.key});
  @override
  State<LessonListScreen> createState() => _LessonListScreen();
}

class _LessonListScreen extends State<LessonListScreen> {
  @override
  Widget build(BuildContext context) {
    return Stackcontainer(
        enableSearchInput: false,
        posTop: 200,
        // Header navigation content
        headerNavigation: [
          // --- Profile image with rounded corners ---
          Header(context: context),
          const SizedBox(height: 15),
          const SizedBox(
            width: 350,
            child: CupertinoProgressBar(value: 0.5),
          ),
        ],
        child:  ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) =>  WordTile(
            route:index,
            isLessonScreenItems: true, 
            progress: 20, 
            word: "condisere", 
            definition: "considre is to think deeply ...",
            category: "test",
            colorIndex:index,
            icon: CupertinoIcons.book,
            onTap:(router)=>{
              
              Navigator.pushNamed(context, RouteNames.learn_details)
            },
          )
        ) 
    );
  }
}

