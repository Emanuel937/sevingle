import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkeletonPage extends StatefulWidget {
  final Widget child;

  const SkeletonPage({super.key, required this.child});

  @override
  State<SkeletonPage> createState() => _SkeletonPageState();
}

class _SkeletonPageState extends State<SkeletonPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: widget.child,
      ),
    );
  }
}
