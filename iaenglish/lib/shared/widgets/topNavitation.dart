import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/shared/widgets/topNavigationItens.dart';
import 'package:provider/provider.dart';

class TopNavigationMenuBar extends StatelessWidget {
  const TopNavigationMenuBar({super.key});
  @override
  Widget build(BuildContext context) {
    final colors = context.watch<ThemeProvider>().colors;
    return ClipRRect(
      child:Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white.withOpacity(0.12),
              width: 1.2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// ----------------------------------------------------
              /// TOP ROW : Avatar + Search Input + Notification + Chat
              /// ----------------------------------------------------
              Row(
                children: [
                  /// Avatar
                  Container(
                    padding: const EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: colors.primary.withOpacity(0.5),
                        width: 2,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 22,
                      backgroundImage:NetworkImage(
                        'https://cdn.pixabay.com/photo/2022/09/16/13/07/generated-7458584_1280.jpg',
                      ),
                    ),
                  ),
               const SizedBox(width: 14),
               Expanded(
                  child: Container(
                    height: 42,
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.18),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.22),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.search,
                          color: colors.primary.withOpacity(0.85),
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Localizations(
                            locale: const Locale('en'),
                            delegates: const [
                              DefaultMaterialLocalizations.delegate,
                              DefaultWidgetsLocalizations.delegate,
                            ],
                            child: Material(
                              color: Colors.transparent,
                              child: TextField(
                                style: TextStyle(
                                  color: colors.primary,
                                  fontSize: 15,
                                ),
                                decoration: const InputDecoration(
                                  hintText: "Search...",
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                  const SizedBox(width: 14),
                  /// Notification button
                  _glassIcon(
                    icon: CupertinoIcons.bell,
                    color: colors.primary,
                  ),
                  const SizedBox(width: 12),
                  /// Messenger button
                  _glassIcon(
                    icon: CupertinoIcons.chat_bubble_text,
                    color: colors.secondary,
                  ),
                ],
              ),

              /// ----------------------------------------------------
              /// BOTTOM ROW : Navigation Items (Premium spacing)
              /// ----------------------------------------------------
              Row(
                children: [
                  Topnavigationitens(
                    icon: CupertinoIcons.home,
                    label: 'PodCast',
                    color: colors.primary.withOpacity(0.64),
                  ),
                  Topnavigationitens(
                    icon: Icons.fitness_center,
                    label: 'Training',
                    color: colors.secondary.withOpacity(0.3),
                  ),
                  Topnavigationitens(
                    icon: CupertinoIcons.add,
                    label: 'Add words',
                    color: colors.secondary.withOpacity(0.3),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }

  /// Glass icon button (premium)
  Widget _glassIcon({required IconData icon, required Color color}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.18),
        border: Border.all(
          color: Colors.white.withOpacity(0.22),
        ),
      ),
      child: Icon(
        icon,
        size: 22,
        color: color,
      ),
    );
  }
}
