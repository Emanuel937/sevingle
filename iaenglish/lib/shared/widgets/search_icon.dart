
import 'package:flutter/cupertino.dart';
import 'package:iaenglish/config/constant/dimension.dart';

// ignore: non_constant_identifier_names
Widget SearchIcon(dynamic colors){

  return Icon(CupertinoIcons.search,
                          color: colors.iconInactive,
                          size: 10
                      );
}
