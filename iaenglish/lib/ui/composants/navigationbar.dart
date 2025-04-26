import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/config/theme/app_theme.dart';

class ModernBottomNav extends StatefulWidget {

  final List<Map<String, dynamic>> items;
  const ModernBottomNav({super.key, required this.items});

  @override
  State<ModernBottomNav> createState() => _ModernBottomNavState();
}

class _ModernBottomNavState extends State<ModernBottomNav> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    
    final items =  widget.items;
    final colors = Provider.of<ThemeProvider>(context).colors;

    return Stack(
      children: [
        CupertinoPageScaffold(
          child: SafeArea(
            child: items[_currentIndex]['screen'] as Widget,
          ),
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: colors.topNavigationBackground,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(items.length, (index) {
                final bool isActive = _currentIndex == index;
                final Map<String, dynamic> item = items[index];

                return GestureDetector(
                  onTap: () => setState(() => _currentIndex = index),
                  behavior: HitTestBehavior.translucent,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: colors.topNavigationBackground,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          item['icon'] as IconData,
                          color: isActive
                              ? colors.topNavigationActiveIcon
                              : colors.topNavigationInActiveIcon,
                          size: 22,
                        ),
                        if (isActive)
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              item['label'] as String,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: colors.topNavigationActiveIcon,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
