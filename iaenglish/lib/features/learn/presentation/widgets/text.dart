
//
// -------------------------------------------------------------
// SECOND SLIDER CONTAINER (TEXTE + IMAGE)
// -------------------------------------------------------------
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/features/learn/presentation/widgets/sliderWordContainer.dart';
import 'package:iaenglish/shared/widgets/audiocontrol.dart';

class SecondSliderContainer extends StatelessWidget {
  final BaseColors colors;
  final String title;
  final String paragraph;
  final String imageUrl;

  const SecondSliderContainer({
    super.key,
    required this.colors,
    required this.title,
    required this.paragraph,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors.surface,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        children: [
          CupertinoText.large(context, title),
          const SizedBox(height: 30),
          modernCard(
            context: context,
            colors: colors,
            icon: CupertinoIcons.doc_text,
            title: "Lesson Content",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AudioControl(context: context, colors: colors),
                SizedBox(height: 20),
                SelectableText(
                  paragraph,
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
                 SizedBox(height: 20),
                const SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.network(
                    imageUrl,
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
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