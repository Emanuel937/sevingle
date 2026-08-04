
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/routes/routes_name.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:provider/provider.dart';


class DailyLearningGoalSection extends StatefulWidget {
  final int currentProgress;
  final int dailyGoal;
  final int streak;
  final int xp;

  const DailyLearningGoalSection({
    super.key,
    required this.currentProgress,
    required this.dailyGoal,
    required this.streak,
    required this.xp,
  });

  @override
  State<DailyLearningGoalSection> createState() => _DailyLearningGoalSectionState();
}

class _DailyLearningGoalSectionState extends State<DailyLearningGoalSection> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.read<ThemeProvider>().colors;
    final progress = (widget.currentProgress / widget.dailyGoal).clamp(0.0, 1.0);

    return GestureDetector(
      onTapDown: (_) => setState(() => pressed = true),
      onTapUp: (_) => setState(() => pressed = false),
      onTapCancel: () => setState(() => pressed = false),
      onTap: () {
        Navigator.pushNamed(context, RouteNames.learn_details);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 140),
        curve: Curves.easeOut,
        height: 220,
        width: 330,
        transform: Matrix4.identity()..scale(pressed ? 0.97 : 1.0),
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.only(right: 20),

        // ⭐ NEW UNIQUE DESIGN
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),

          // ⭐ Deep Space Gradient
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF2B1E4A), // deep purple
              Color(0xFF3A2A6A), // nebula violet
              Color(0xFF1F1A3A), // cosmic dark
            ],
          ),

          // ⭐ Aurora Edge Border
          border: Border.all(
            color: const Color(0xFF7DF9FF).withOpacity(0.25), // cyan glow
            width: 1.4,
          ),

          // ⭐ Soft Nebula Shadow
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF7DF9FF).withOpacity(0.20),
              blurRadius: 22,
              offset: const Offset(0, 8),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TITLE
            CupertinoText.title(
              context,
              "Daily Goal",
              copyWith: const TextStyle(
                color: Color(0xFFECE8FF),
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 4),

            // SUBTEXT
            CupertinoText.bodyText(
              context,
              "Reach ${widget.dailyGoal} XP today",
              copyWith: const TextStyle(
                color: Color(0xFFD6D2F5),
                fontSize: 13,
              ),
            ),

            const SizedBox(height: 16),

            // ⭐ PLASMA PROGRESS BAR
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                  color: const Color(0xFF4A3C7A).withOpacity(0.35),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOut,
                      width: constraints.maxWidth * progress,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF7DF9FF), // cyan glow
                            Color(0xFFB084F9), // purple plasma
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF7DF9FF).withOpacity(0.6),
                            blurRadius: 12,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 14),

            // ⭐ STATS ROW (neon minimal)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(CupertinoIcons.bolt_fill,
                        color: Color(0xFF7DF9FF), size: 18),
                    SizedBox(width: 6),
                  ],
                ),
                CupertinoText.bodyText(
                  context,
                  "${widget.xp} XP",
                  copyWith: const TextStyle(
                    color: Color(0xFFECE8FF),
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),

                Row(
                  children: const [
                    Icon(CupertinoIcons.flame_fill,
                        color: Color(0xFFFFA75D), size: 18),
                    SizedBox(width: 6),
                  ],
                ),
                CupertinoText.bodyText(
                  context,
                  "${widget.streak} days",
                  copyWith: const TextStyle(
                    color: Color(0xFFECE8FF),
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ],
            ),

            const Spacer(),

            // ⭐ CTA BUTTON — Nebula Capsule
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF7DF9FF).withOpacity(0.15),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: const Color(0xFF7DF9FF).withOpacity(0.35),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF7DF9FF).withOpacity(0.25),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Continue",
                    style: TextStyle(
                      color: Color(0xFF7DF9FF),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 6),
                  Icon(
                    CupertinoIcons.arrow_right_circle_fill,
                    color: Color(0xFF7DF9FF),
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
