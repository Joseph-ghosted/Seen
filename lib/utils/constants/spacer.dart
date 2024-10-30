import 'package:flutter/material.dart';

// YMargin(double height) => SizedBox(height: height.h);
// XMargin(double width) => SizedBox(width: width.w);

class XMargin extends StatelessWidget {
  final double x;

  const XMargin(this.x, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: x);
  }
}

class YMargin extends StatelessWidget {
  final double y;

  const YMargin(this.y, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: y);
  }
}
