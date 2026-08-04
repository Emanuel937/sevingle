
import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/routes/routes_name.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:provider/provider.dart';

class LearnCallToActionCard extends StatefulWidget {
  
  @override
  State<LearnCallToActionCard> createState() => _LearnCallToActionCardState();
}

class _LearnCallToActionCardState extends State<LearnCallToActionCard> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.read<ThemeProvider>().colors;

    return GestureDetector(
      onTapDown: (_) => setState(() => pressed = true),
      onTapCancel: () => setState(() => pressed = false),
      onTapUp: (_) => setState(() => pressed = false),
      onTap: () {
        Navigator.pushNamed(context, RouteNames.learn_list);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        curve: Curves.easeOut,
        margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
        padding: const EdgeInsets.all(22),
        transform: Matrix4.identity()..scale(pressed ? 0.97 : 1.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colors.primary.withOpacity(0.85),
              colors.secondary.withOpacity(0.85),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: colors.primary.withOpacity(0.25),
              blurRadius: pressed ? 10 : 22,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          children: [
            // Illustration
            Expanded(
              flex: 1,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2025/08/27/05/55/schoolboy-9799221_1280.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(width: 18),

            // Text + CTA
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CupertinoText.title(
                    context,
                    "Ready to Learn?",
                    copyWith: TextStyle(
                      color: colors.onPrimary,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 6),

                  CupertinoText.bodyText(
                    context,
                    "Boost your English skills with daily lessons crafted for fast progress.",
                    copyWith: TextStyle(
                      color: colors.onPrimary.withOpacity(0.85),
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // CTA BUTTON
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: colors.surface.withOpacity(0.95),
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: colors.shadow.withOpacity(0.15),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CupertinoText.bodyText(
                          context,
                          "Start Learning",
                          copyWith: TextStyle(
                            color: colors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          CupertinoIcons.arrow_right_circle_fill,
                          color: colors.primary,
                          size: 22,
                        ),
                      ],
                    ),
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
