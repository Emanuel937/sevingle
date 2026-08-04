// -------------------------------------------------------------
// PREMIUM PROGRESS CIRCLE (Apple Fitness style)
// -------------------------------------------------------------
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonProgressCircle extends StatelessWidget {
  final double progress; // 0 to 100

  const LessonProgressCircle(this.progress);

  @override
  Widget build(BuildContext context) {
    final double normalized = (progress.clamp(0, 100)) / 100;

    return SizedBox(
      width: 32,
      height: 32,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background circle
          Container(
            width: 32,
            height: 32,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: CupertinoColors.systemGrey5,
            ),
          ),

          // Progress arc
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: normalized),
            duration: const Duration(milliseconds: 400),
            builder: (context, value, child) {
              return CircularProgressIndicator(
                value: value,
                strokeWidth: 3,
                backgroundColor: CupertinoColors.systemGrey4,
                valueColor: const AlwaysStoppedAnimation<Color>(
                  CupertinoColors.activeBlue,
                ),
              );
            },
          ),

          // Percentage text
          Text(
            "${progress.toInt()}%",
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.label,
            ),
          ),
        ],
      ),
    );
  }
}
