import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget NavigatorPop({required BuildContext context}) {
  return IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: const Icon(CupertinoIcons.back),
  );
}
