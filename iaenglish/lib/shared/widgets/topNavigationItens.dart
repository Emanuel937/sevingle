import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:provider/provider.dart';

class Topnavigationitens extends StatelessWidget {
  final IconData icon;
  final Color color; // This already receives surfaceVariant or onSurfaceVariant
  final String label;

  const Topnavigationitens({
    super.key,
    required this.icon,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30, top: 30, right: 20),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color, // new Material name passed from parent
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: Icon(
            icon,
            color: color.withOpacity(1), // old: navigationItensIcon
            size: 23,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          margin: const EdgeInsets.only(left: 30, top: 10, right: 20),
          child: CupertinoText.small(context, label),
        ),
      ],
    );
  }
}
