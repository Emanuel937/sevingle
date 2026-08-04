import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';

class CupertinoSliderWithDots extends StatefulWidget {
  final List<Widget> items;
  final BaseColors colors;

  const CupertinoSliderWithDots({
    super.key,
    required this.items,
    required this.colors,
  });

  @override
  State<CupertinoSliderWithDots> createState() => _CupertinoSliderWithDotsState();
}

class _CupertinoSliderWithDotsState extends State<CupertinoSliderWithDots> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SLIDER
        Expanded(
          child: PageView.builder(
            controller: _controller,
            itemCount: widget.items.length,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            itemBuilder: (context, index) {
              return widget.items[index];
            },
          ),
        ),

        const SizedBox(height: 12),

        // DOTS INDICATOR (Cupertino style)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.items.length, (index) {
            final bool isActive = index == _currentPage;

            return AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: isActive ? 12 : 8,
              height: isActive ? 12 : 8,
              decoration: BoxDecoration(
                color: isActive
                    ? widget.colors.primary
                    : widget.colors.onSurfaceVariant.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ],
    );
  }
}
