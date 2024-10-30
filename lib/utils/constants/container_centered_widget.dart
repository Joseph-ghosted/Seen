import 'package:Seen/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';

class ContainerWidgetCenter extends StatelessWidget {
  final Widget? widget;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? colorBG;
  final Function()? ontap;

  const ContainerWidgetCenter({
    super.key,
    this.widget,
    this.height,
    this.width,
    this.borderRadius,
    this.colorBG,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: height ?? screenHeight(context) * 0.035,
        width: width ?? 35,
        decoration: BoxDecoration(
          color: colorBG ?? const Color(0xffFAFCFE),
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
        child: Center(child: widget),
      ),
    );
  }
}
