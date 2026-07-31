import 'package:flutter/widgets.dart';
import 'package:iaenglish/shared/widgets/pageSkeleton.dart';

class DetailsLessonScreen extends StatefulWidget{
  const DetailsLessonScreen({super.key});
  @override
  State<DetailsLessonScreen> createState () => _DetailsLessonScreen();

}

class _DetailsLessonScreen extends State<DetailsLessonScreen>{
  
  @override
  Widget build(BuildContext context){
    return const SkeletonPage(child: Center(child:Text('learn page')));
  }
}