  
import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:provider/provider.dart';

Widget Header({required BuildContext context}) {
  final colors = context.watch<ThemeProvider>().colors;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              color: colors.primary.withOpacity(0.12),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              CupertinoIcons.book_fill,
              size: 26,
              color: Color.fromARGB(108, 11, 49, 90),
            ),
          ),
          CupertinoButton(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            borderRadius: BorderRadius.circular(30),
            color: colors.onBackground.withOpacity(0.08),
            onPressed: () {},
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.arrow_2_circlepath,
                  size: 16,
                  color: Color.fromARGB(255, 9, 9, 9),
                ),
                const SizedBox(width: 6),
                CupertinoText.small(
                  context,
                  "Change level",
                  copyWith: TextStyle(
                    color: colors.onBackground.withOpacity(0.7),
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 22),
      CupertinoText.large(
        context,
        "Intermediate",
      ),
    ],
  );
}
