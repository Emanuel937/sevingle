// main.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iaenglish/ui/screens/list.dart';
import 'package:iaenglish/ui/screens/reader.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/ui/screens/home_screen.dart';
import 'package:iaenglish/config/theme/app_theme.dart';
import 'package:iaenglish/ui/composants/navigationbar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // <<< Important !
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final List<Map<String, dynamic>> navItems = [
    {
      'icon': CupertinoIcons.home,
      'label': 'Accueil',
      'screen': const HomeScreen(),
    },
    {
      'icon': CupertinoIcons.news,
      'label': 'Actualités',
      'screen':  Reader(),
    },
    {
      'icon': CupertinoIcons.person,
      'label': 'Profil',
      'screen':  BooksList(),
    },
    {
      'icon': CupertinoIcons.settings,
      'label': 'Paramètres',
      'screen': const Center(child: Text('⚙️ Paramètres')),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return CupertinoApp(
            debugShowCheckedModeBanner: false,
            theme: CupertinoThemeData(
              scaffoldBackgroundColor:
                  themeProvider.colors.scaffoldPageBackground,
              brightness: themeProvider.isDark
                  ? Brightness.dark
                  : Brightness.light,
              textTheme: CupertinoTextThemeData(
                textStyle: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  color: themeProvider.colors.cardTitle,
                  letterSpacing: 0.9
                ),
              ),
            ),
            home: ModernBottomNav(items: navItems),
          );
        },
      ),
    );
  }
}
