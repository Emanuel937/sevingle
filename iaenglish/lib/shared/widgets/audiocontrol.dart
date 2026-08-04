

import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';

Widget AudioControl({required BuildContext context, required BaseColors colors}) {
      // ------------------ AUDIO CONTROLLER ------------------
  return    Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: colors.surfaceVariant.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: colors.shadow,
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        CupertinoIcons.play_circle_fill,
                        color: colors.primary,
                        size: 32,
                      ),
                      Icon(
                        CupertinoIcons.repeat,
                        color: colors.onSurfaceVariant,
                        size: 26,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: colors.surface,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CupertinoText.small(context, "1.0x"),
                      ),
                    ],
                  ),
    );
}