import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const spinkit = SpinKitRing(
  lineWidth: 3,
  color: Colors.white,
  size: 50.0,
);

class MLoader extends StatelessWidget {
  const MLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.2),
      body: Container(
        color: Colors.black.withOpacity(0.2),
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const FittedBox(child: spinkit),
          ),
        ),
      ),
    );
  }

  // static void changeLoadingState(bool state) {
  //   if (state == true) {
  //     showDialog(
  //         context: navigatorKey.currentContext!,
  //         builder: (context) => const MLoader());
  //   } else {
  //     Navigator.pop(navigatorKey.currentContext!);
  //   }
  // }
}
