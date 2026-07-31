
import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/navigation/bottom_nav_items.dart';
import 'package:iaenglish/core/navigation/modern_bottom_nav.dart';
import 'package:iaenglish/core/routes/app_routes.dart';
import 'package:iaenglish/core/routes/routes_name.dart';
import 'package:iaenglish/core/themes/cuppertino/cupertinoTheme.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return CupertinoApp(
            routes: {
            RouteNames.home: (_) => ModernBottomNav(items: BottomNavItems.items),
            ...AppRoutes.routes,
          },
          debugShowCheckedModeBanner: false,
          theme: setTheme(themeProvider: themeProvider),
          home: ModernBottomNav(items: BottomNavItems.items),
        );
      },
    );
  }
}