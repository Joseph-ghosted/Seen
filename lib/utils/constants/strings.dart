import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final double screenHeight =
    MediaQueryData.fromView(WidgetsBinding.instance.window).size.height;

final double screenWidth =
    MediaQueryData.fromView(WidgetsBinding.instance.window).size.width;

final bool smallDevice =
    MediaQueryData.fromView(WidgetsBinding.instance.window).size.width < 400
        ? true
        : false;

String addCommasToNumberDoubleTrans(String? number) {
  final format = NumberFormat('#,##0');
  return format.format(number);
}

//delete account
// Future<dynamic> showDialogLogout(BuildContext context) {
//   return showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(25),
//         ),
//         backgroundColor: Colors.white,
//         child: Container(
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.circular(20)),
//           // padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Column(
//                   children: [
//                     customText(
//                         text: "Ikechukwu Lucept",
//                         fontSize: 14,
//                         fontWeight: FontWeight.w800,
//                         line: 2,
//                         textColor: Colors.red),
//                     ///const YMargin(2),
//                     customText(
//                         text:
//                             "Are you sure you want to logout of your Lucepts account?",
//                         fontSize: 10,
//                         textColor: AppColors.primary2,
//                         line: 20,
//                         textAlignment: TextAlign.center),
//                     const YMargin(4),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//                 width: double.infinity,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: GestureDetector(
//                         //onTap: () => context.push(AppRoutes.emailScreen),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                                 width: 1.2, color: AppColors.greyWhite),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(15),
//                               topRight: Radius.circular(0),
//                               bottomLeft: Radius.circular(15),
//                               bottomRight: Radius.circular(0),
//                             ),
//                           ),
//                           child: Center(
//                             child: customText(
//                               text: 'Cancel',
//                               fontSize: 14,
//                               textColor: AppColors.primary2,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: GestureDetector(
//                         //onTap: () => context.pop(),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: const BorderRadius.only(
//                                 topLeft: Radius.circular(0),
//                                 topRight: Radius.circular(15),
//                                 bottomLeft: Radius.circular(0),
//                                 bottomRight: Radius.circular(15)),
//                             color: AppColors.white,
//                             border: Border.all(
//                                 width: 1.2, color: AppColors.greyWhite),
//                           ),
//                           child: Center(
//                             child: customText(
//                               text: 'Logout',
//                               fontSize: 14,
//                               textColor: AppColors.red,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }

class AppString {
  static const String naira = "₦";
}

class SnackUtils {
  static void showInfoSnack(String msg, BuildContext? context) {
    CherryToast.info(title: Text(msg)).show(context!);
  }

  static void showSnack(String msg, BuildContext? context) {
    CherryToast.error(title: Text(msg)).show(context!);
  }

  static void showSuccessSnack(String msg, BuildContext? context) {
    CherryToast.success(title: Text(msg)).show(context!);
  }
}
