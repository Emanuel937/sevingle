
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/config/constant/dimension.dart';
import 'package:iaenglish/config/constant/size.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:provider/provider.dart';

class NavigationContainerState extends StatefulWidget{
  
  final Widget container;
  final double? posTop; 

  const NavigationContainerState({super.key, required this.container, this.posTop});

  @override
  _NavigationContainer createState() =>  _NavigationContainer();
}

class _NavigationContainer extends State<NavigationContainerState> {
 

 Widget build(BuildContext context){
  final colors            = Provider.of<ThemeProvider>(context).colors;
  final  Widget container = widget.container;
  SizeValues Dimension = SizeValues();

   return Positioned(
              top: widget.posTop ?? Dimension.positionedTop,
              left: Dimension.positionedLeft,
              right: Dimension.positionedRight,
              bottom: Dimension.positionedBottom,
              child: Container(
                padding: EdgeInsets.all(Dimension.containerPadding),
                decoration: BoxDecoration(
                  color: colors.homeStackSecondChildBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimension.radiusTopLeft),
                    topRight: Radius.circular(Dimension.radiusTopRight),
                    bottomLeft: Radius.circular(Dimension.radiusBottomLeft),
                    bottomRight: Radius.circular(Dimension.radiusBottomRight),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: colors.primaryShadown,
                      blurRadius: Dimension.shadowBlurRadius,
                      offset: Dimension.shadowOffset,
                    ),
                  ],
                ),
                child: container,
              ),
            );
 }
}