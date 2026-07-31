// main.dart
import 'package:flutter/cupertino.dart';
import 'package:iaenglish/app.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); 
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),   
      child: const MyApp(),
    ),
  );
}

