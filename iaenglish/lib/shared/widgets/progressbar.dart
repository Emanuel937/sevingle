import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
/// Custom iOS-style progress bar
class CupertinoProgressBar extends StatelessWidget {
  final double value;
  const CupertinoProgressBar({super.key, required this.value});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          CupertinoText.small(context, "20/100 sets completed"),
          CupertinoText.bodyText(context,"2%"),
        ]),
        SizedBox(height: 7),
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
            widthFactor: value,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 11, 38, 170),
              ),
            ),
          ),
          ),
        )
        ]
    );
  }
}
