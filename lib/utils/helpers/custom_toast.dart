// class WallsToast {
//   static showToast({required String message, bool isSuccess = false}) {
//     showFlash(
//       duration: const Duration(seconds: 3),
//       context: navigatorKey.currentContext!,
//       builder: (context, controller) {
//         return Flash(
//           controller: controller,
//           child: FlashBar(
//             position: FlashPosition.top,
//             backgroundColor: isSuccess ? Colors.green : Colors.redAccent,
//             icon: Icon(
//               isSuccess ? Icons.check : Icons.cancel,
//               color: Colors.white,
//             ),
//             padding: const EdgeInsets.all(25),
//             content: customText(
//                 text: message, fontSize: 14, textColor: Colors.black),
//             controller: controller,
//           ),
//         );
//       },
//     );
//   }
// }
