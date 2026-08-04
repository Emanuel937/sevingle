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
      'route': RouteNames.learn_list,
    },
      {
      'icon': CupertinoIcons.device_laptop,
      'label': 'Training',
      'route': RouteNames.training,
    },
    {
      'icon': CupertinoIcons.list_dash,
      'label': 'Profil',
      'route': RouteNames.setting,
    }
  ];
}
