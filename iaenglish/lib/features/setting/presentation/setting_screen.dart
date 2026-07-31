import 'package:flutter/widgets.dart';
import 'package:iaenglish/shared/widgets/pageSkeleton.dart';

class SettingScreen extends StatefulWidget{
  const SettingScreen({super.key});
  @override
  State<SettingScreen> createState () => _SettingScreen();

}

class _SettingScreen extends State<SettingScreen>{
  
  @override
  Widget build(BuildContext context){
    return const SkeletonPage(child: Center(child:Text('setting page')));
  }
}