import 'package:Seen/ui/common/app_constants.dart';
import 'package:flutter/material.dart';

class BoxRegisterBG extends StatelessWidget {
  final Widget? child;

  const BoxRegisterBG({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kdDesktopMaxContentWidth / 0,
      height: kdDesktopMaxContentHeight / 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: kdDesktopMaxContentHeight * 0.09,
            horizontal: kdDesktopMaxContentWidth * 0.15),
        child: child,
      ),
    );
  }
}
