import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/shared/widgets/progressionCircle.dart';

class WordTile extends StatelessWidget {
  final String word;
  final String definition;
  final IconData icon;
  final String category;
  final int route;                               // FIXED
  final void Function(int route)? onTap;         // FIXED

  final bool isLessonScreenItems;
  final double progress;
  final int colorIndex;

  const WordTile({
    super.key,
    required this.word,
    required this.definition,
    required this.icon,
    required this.category,
    required this.route,                         // FIXED
    this.isLessonScreenItems = false,
    this.progress = 0,
    this.colorIndex = 0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<Color> premiumColors = [
      CupertinoColors.activeBlue,
      CupertinoColors.systemTeal,
    ];

    final List<IconData> learningIcons = [
      CupertinoIcons.device_laptop,
      CupertinoIcons.collections,
      CupertinoIcons.doc_text,
      CupertinoIcons.desktopcomputer,
      CupertinoIcons.lightbulb,
      CupertinoIcons.book,
    ];

    int hash = word.hashCode.abs();
    final Color stableColor = premiumColors[hash % premiumColors.length];
    final IconData stableIcon = learningIcons[hash % learningIcons.length];

    int safeIndex = colorIndex % premiumColors.length;
    final Color lessonColor = premiumColors[safeIndex];
    final IconData lessonIcon = learningIcons[safeIndex % learningIcons.length];

    final Color finalColor = isLessonScreenItems ? lessonColor : stableColor;
    final IconData finalIcon = isLessonScreenItems ? lessonIcon : stableIcon;
    final Color iconColor = finalColor.withOpacity(0.85);

    return GestureDetector(
      onTap: () => onTap?.call(route),            // FIXED
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color(0x15000000),
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: CupertinoButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {
              onTap?.call(route);
          },
          child: Row(
            children: [
              Container(
                width: 80,
                height: 70,
                decoration: BoxDecoration(
                  color: finalColor.withOpacity(0.25),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                ),
                child: Icon(
                  finalIcon,
                  size: 32,
                  color: iconColor,
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CupertinoText.title(context, word),
                    const SizedBox(height: 4),
                    CupertinoText.bodyText(context, definition),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey4.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: isLessonScreenItems
                    ? LessonProgressCircle(progress)
                    : Text(
                        category,
                        style: const TextStyle(
                          fontSize: 12,
                          color: CupertinoColors.label,
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
