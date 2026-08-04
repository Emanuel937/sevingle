import 'package:flutter/cupertino.dart';
import 'package:iaenglish/config/constant/size.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/shared/widgets/navigatorPop.dart';
import 'package:iaenglish/shared/widgets/search_icon.dart';

Widget BookListHearder({required BuildContext context, required String title,  required BaseColors colors}) {

  SizeValues Dimension = SizeValues();
  return Container(
  child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(children: [
              NavigatorPop(context: context),
              CupertinoText.large(context, "Books"),
          ]),
          SearchIcon(),
        
        ],
      ),
    );
}