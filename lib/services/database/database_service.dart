// import 'dart:developer';

// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:lucepts/src/models/user_account/user_model.dart';
// import 'package:lucepts/src/utils/constants/storage_keys.dart';

// abstract class DatabaseService {
//   Future clearDatabase();
//   UserData? getUser();
//   Future init();
//   Future saveUser(UserData userModel);
// }

// class DatabaseServiceImpl extends DatabaseService {
//   @override
//   Future clearDatabase() async {
//     Box<UserData> userBox = Hive.box(StorageKeys.userModel);
//     await userBox.clear();
//   }

//   @override
//   UserData? getUser() {
//     Box<UserData> userBox = Hive.box<UserData>(StorageKeys.userModel);
//     if (userBox.isNotEmpty) {
//       final user = userBox.getAt(0);
//       log("Retrieved user: $user");
//       log("Retrieved user address: ${user?.email}");
//       return user;
//     }
//     return null;
//   }

//   @override
//   Future init() async {
//     await Hive.initFlutter();
//     registerAdapter();
//     await openBoxes();
//   }

//   Future openBoxes() async {
//     await Hive.openBox<UserData>(StorageKeys.userModel);
//   }

//   void registerAdapter() {
//     Hive.registerAdapter(UserDataAdapter());
//   }

//   @override
//   Future saveUser(UserData userModel) async {
//     Box<UserData> userBox = Hive.box<UserData>(StorageKeys.userModel);
//     try {
//       await userBox.clear();
//       await userBox.add(userModel);
//       print("User model saved: $userModel");
//     } catch (e) {
//       print("Error saving user model: $e");
//     }
//   }
// }
