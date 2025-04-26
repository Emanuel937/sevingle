
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/config/constant/dimension.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/config/theme/app_theme.dart';

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

   return Positioned(
              top: widget.posTop ?? Dimension.size.positionedTop,
              left: Dimension.size.positionedLeft,
              right: Dimension.size.positionedRight,
              bottom: Dimension.size.positionedBottom,
              child: Container(
                padding: EdgeInsets.all(Dimension.size.containerPadding),
                decoration: BoxDecoration(
                  color: colors.homeStackSecondChildBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimension.size.radiusTopLeft),
                    topRight: Radius.circular(Dimension.size.radiusTopRight),
                    bottomLeft: Radius.circular(Dimension.size.radiusBottomLeft),
                    bottomRight: Radius.circular(Dimension.size.radiusBottomRight),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: colors.primaryShadown,
                      blurRadius: Dimension.size.shadowBlurRadius,
                      offset: Dimension.size.shadowOffset,
                    ),
                  ],
                ),
                child: container,
              ),
            );
 }
}