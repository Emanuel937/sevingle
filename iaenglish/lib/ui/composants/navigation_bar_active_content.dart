import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/config/constant/dimension.dart';
import 'package:iaenglish/config/constant/size.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:provider/provider.dart';

class NavigationContainerState extends StatefulWidget {
  final Widget container;
  final double? posTop;

  const NavigationContainerState({
    super.key,
    required this.container,
    this.posTop,
  });

  @override
  _NavigationContainer createState() => _NavigationContainer();
}

class _NavigationContainer extends State<NavigationContainerState> {
  @override
  Widget build(BuildContext context) {
    final colors = context.watch<ThemeProvider>().colors;
    final Widget container = widget.container;
    SizeValues dimension = SizeValues();

    return Positioned(
      top: widget.posTop ?? dimension.positionedTop,
      left: dimension.positionedLeft,
      right: dimension.positionedRight,
      bottom: dimension.positionedBottom,
      child: Container(
        padding: EdgeInsets.all(dimension.containerPadding),
        decoration: BoxDecoration(
          color: colors.surfaceVariant, // old: homeStackSecondChildBackground
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(dimension.radiusTopLeft),
            topRight: Radius.circular(dimension.radiusTopRight),
            bottomLeft: Radius.circular(dimension.radiusBottomLeft),
            bottomRight: Radius.circular(dimension.radiusBottomRight),
          ),
          boxShadow: [
            BoxShadow(
              color: colors.shadow, // old: primaryShadown
              blurRadius: dimension.shadowBlurRadius,
              offset: dimension.shadowOffset,
            ),
          ],
        ),
        child: container,
      ),
    );
  }
}
