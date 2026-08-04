
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';


Widget modernCard({
  required BuildContext context,
  required IconData icon,
  required String title,
  required Widget child,
  required BaseColors colors,
  Widget? trailing,
}) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 250),
    curve: Curves.easeOut,
    padding: const EdgeInsets.all(18),
    margin: const EdgeInsets.only(bottom: 22),
    decoration: BoxDecoration(
      color: colors.surface.withOpacity(0.9),
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: colors.shadow,
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          colors.surfaceVariant.withOpacity(0.45),
          colors.surface.withOpacity(0.75),
        ],
      ),
      border: Border.all(
        color: colors.primaryContainer.withOpacity(0.25),
        width: 1,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: colors.primary, size: 20),
            const SizedBox(width: 8),
            CupertinoText.title(context, title),
            const Spacer(),
            if (trailing != null) trailing,
          ],
        ),
        const SizedBox(height: 10),
        child,
      ],
    ),
  );
}

class SliderWordContainer extends StatefulWidget {
  final String word;
  final BaseColors colors;

  const SliderWordContainer({
    super.key,
    required this.word,
    required this.colors,
  });

  @override
  State<SliderWordContainer> createState() => _SliderWordContainerState();
}

class _SliderWordContainerState extends State<SliderWordContainer> {
  bool wishlist = false;

  @override
  Widget build(BuildContext context) {
    final colors = widget.colors;

    return Container(
      color: colors.surface,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CupertinoText.large(context, widget.word),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: colors.primary.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.volume_up,
                      color: colors.onPrimary, size: 30),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // ------------------ DEFINITION + WISHLIST + AUDIO ------------------
          modernCard(
            context: context,
            colors: colors,
            icon: CupertinoIcons.book_solid,
            title: "Definition",
            trailing: GestureDetector(
              onTap: () => setState(() => wishlist = !wishlist),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: wishlist
                      ? colors.error.withOpacity(0.15)
                      : colors.surfaceVariant.withOpacity(0.4),
                  shape: BoxShape.circle,
                  boxShadow: wishlist
                      ? [
                          BoxShadow(
                            color: colors.error.withOpacity(0.05),
                            blurRadius: 4,
                            offset: const Offset(0, 3),
                          )
                        ]
                      : [],
                ),
                child: Icon(
                  wishlist
                      ? CupertinoIcons.heart_fill
                      : CupertinoIcons.heart,
                  color: wishlist ? colors.error : colors.onSurfaceVariant,
                  size: 20,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoText.bodyText(
                  context,
                  "Considere mean to think about something carefully, especially in order to make a decision",
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),

          // ------------------ SYNONYMS ------------------
          modernCard(
            context: context,
            colors: colors,
            icon: CupertinoIcons.arrow_right_arrow_left,
            title: "Synonyms",
            child: CupertinoText.bodyText(
              context,
              "Think about, contemplate, ponder, reflect on, mull over",
            ),
          ),

          // ------------------ EXAMPLES ------------------
          modernCard(
            context: context,
            colors: colors,
            icon: CupertinoIcons.list_bullet,
            title: "Examples",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoText.bodyText(
                    context, "1. I will consider your proposal."),
                const SizedBox(height: 4),
                CupertinoText.bodyText(
                    context, "2. She considered the options."),
              ],
            ),
          ),

          const SizedBox(height: 20),

          CupertinoButton(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            color: colors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            onPressed: () {},
            child: CupertinoText.small(context, "Next"),
          ),
        ],
      ),
    );
  }
}
