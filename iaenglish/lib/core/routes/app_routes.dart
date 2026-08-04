import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/routes/routes_name.dart';
import 'package:iaenglish/features/home/presentation/screems/book_details_screen.dart';
import 'package:iaenglish/features/home/presentation/screems/book_list_screen.dart';
import 'package:iaenglish/features/home/presentation/screems/home.dart';
import 'package:iaenglish/features/learn/presentation/screens/details_lesson_screen.dart';
import 'package:iaenglish/features/learn/presentation/screens/lesson_list_screen.dart';
import 'package:iaenglish/features/setting/presentation/setting_screen.dart';
import 'package:iaenglish/features/training/presentation/screens/typing_training_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> get routes {
    return {
      // HOME PAGE ROUTES
      RouteNames.home: (_) => const HomeScreen(),
      RouteNames.book_list:(_) =>  BooksListScreen(),
      RouteNames.book_list_details: (_)=> BookDetailsScreen(),
      //LEAR SCREEN ROUTES
      RouteNames.learn_list: (_) => const LessonListScreen(),
      RouteNames.learn_details: (_) => const DetailsLessonScreen(),
      RouteNames.learn_training: (_) =>  TrainingReviewScreen(),
      // TRAINING SCREEN ROUTES
      RouteNames.training: (_) => TrainingReviewScreen(),
      // SETTING SCREEN ROUTES
      RouteNames.setting: (_) => const SettingScreen(),
    };
  }
}
