import 'package:Seen/ui/common/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainBodyBgWeb extends StatelessWidget {
  final Widget? child;

  const MainBodyBgWeb({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          Container(
            width: kdDesktopMaxContentWidth / 0,
            height: kdDesktopMaxContentHeight / 0,
            color: Colors.black,
          ),
          Container(
            width: kdDesktopMaxContentWidth / 0,
            height: kdDesktopMaxContentHeight / 0,
            child: SvgPicture.asset(
              "assets/images/seenPat.svg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: kdDesktopMaxContentWidth / 0,
            height: kdDesktopMaxContentHeight / 0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black12,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                ],
              ),
            ),
          ),
          child!,
        ],
      ),
    );
  }
}
