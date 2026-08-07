import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';

/// Custom iOS-style progress bar
class CupertinoProgressBar extends StatelessWidget {
  
  final double value;
  final BaseColors? colors;
  const CupertinoProgressBar({super.key, required this.value, this.colors});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          CupertinoText.small(context, "20/100 sets completed"),
          CupertinoText.bodyText(context, "$value %"),
        ]),
        const SizedBox(height: 7),
        ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 10,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: CupertinoColors.systemGrey4,
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: value / 100,
            child: Container(
              decoration: BoxDecoration(
                color: colors != null  ? colors!.secondary:  const Color.fromARGB(255, 11, 38, 170),
              ),
            ),
          ),
          ),
        )
        ]
    );
  }
}
