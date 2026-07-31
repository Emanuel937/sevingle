import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/routes/routes_name.dart';
import 'package:iaenglish/features/home/presentation/screems/book_details_screen.dart';
import 'package:iaenglish/features/home/presentation/screems/book_list_screen.dart';
import 'package:iaenglish/features/home/presentation/screems/home.dart';
import 'package:iaenglish/features/learn/presentation/screens/lesson_list_screen.dart';
import 'package:iaenglish/features/setting/presentation/setting_screen.dart';
import 'package:iaenglish/features/training/presentation/screens/typing_training_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> get routes {
    return {
      RouteNames.home: (_) => const HomeScreen(),
      RouteNames.lesson: (_) => const LessonListScreen(),
      RouteNames.training: (_) => TrainingReviewScreen(),
      RouteNames.setting: (_) => const SettingScreen(),
      RouteNames.book_list:(_) =>  BooksListScreen(),
      RouteNames.book_list_details: (_)=> BookDetailsScreen(),
    };
  }
}
