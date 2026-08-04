// -------------------------------------------------------------
// GRAMMAR CONTAINER (RULE + EXAMPLES + MISTAKES)
// -------------------------------------------------------------
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/features/learn/presentation/widgets/sliderWordContainer.dart';

class GrammarContainer extends StatelessWidget {
  final BaseColors colors;
  final String title;
  final String rule;
  final List<String> examples;
  final List<String>? mistakes;

  const GrammarContainer({
    super.key,
    required this.colors,
    required this.title,
    required this.rule,
    required this.examples,
    this.mistakes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors.surface,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        children: [
          // MAIN TITLE
          CupertinoText.large(context, title),
          const SizedBox(height: 25),

          // GRAMMAR RULE CARD
          modernCard(
            context: context,
            colors: colors,
            icon: CupertinoIcons.book_solid,
            title: "Grammar Rule",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoText.bodyText(
                  context,
                  rule,
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // EXAMPLES CARD
          modernCard(
            context: context,
            colors: colors,
            icon: CupertinoIcons.lightbulb,
            title: "Examples",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: examples.map((e) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: CupertinoText.bodyText(context, "• $e"),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 20),

          // OPTIONAL COMMON MISTAKES
          if (mistakes != null && mistakes!.isNotEmpty)
            modernCard(
              context: context,
              colors: colors,
              icon: CupertinoIcons.exclamationmark_triangle,
              title: "Common Mistakes",
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: mistakes!.map((m) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: CupertinoText.caption(context, "• $m"),
                  );
                }).toList(),
              ),
            ),

          const SizedBox(height: 20),

          // CONTINUE BUTTON
          CupertinoButton(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            color: colors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            onPressed: () {},
            child: CupertinoText.small(context, "Continue"),
          ),
        ],
      ),
    );
  }
}
