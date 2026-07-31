import 'package:flutter/widgets.dart';
import 'package:iaenglish/shared/widgets/pageSkeleton.dart';

class LessonListScreen extends StatefulWidget{
  const LessonListScreen({super.key});
  @override
  State<LessonListScreen> createState () => _LessonListScreen();

}

class _LessonListScreen extends State<LessonListScreen>{
  
  @override
  Widget build(BuildContext context){
    return const SkeletonPage(child: Center(child:Text('learn page')));
  }
}