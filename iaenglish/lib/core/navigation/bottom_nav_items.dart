import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/routes/routes_name.dart';

class BottomNavItems {
  static final items = [
    {
      'icon': CupertinoIcons.home,
      'label': 'Accueil',
      'route': RouteNames.home,
    },
    {
      'icon': CupertinoIcons.book,
      'label': 'Learn',
      'route': RouteNames.lesson,
    },
      {
      'icon': CupertinoIcons.device_laptop,
      'label': 'Training',
      'route': RouteNames.training,
    },
    {
      'icon': CupertinoIcons.settings,
      'label': 'Setting',
      'route': RouteNames.setting,
    }
  ];
}
