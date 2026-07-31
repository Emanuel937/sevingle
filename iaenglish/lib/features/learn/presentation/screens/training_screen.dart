import 'package:flutter/widgets.dart';
import 'package:iaenglish/shared/widgets/pageSkeleton.dart';

class TrainingLessonScreen extends StatefulWidget{
  const TrainingLessonScreen({super.key});
  @override
  State<TrainingLessonScreen> createState () => _TrainingLessonScreen();

}

class _TrainingLessonScreen extends State<TrainingLessonScreen>{
  
  @override
  Widget build(BuildContext context){
    return const SkeletonPage(child: Center(child:Text('learn page')));
  }
}