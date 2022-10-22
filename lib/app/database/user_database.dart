import 'package:hive_flutter/hive_flutter.dart';

class UserDatabase {
  static final userDataBox = Hive.box("UserDatabase");

  static bool isUserLoggedIn() {
    return userDataBox.get("isUserLoggedIn", defaultValue: false) as bool;
  }

  static String getUserPhoneNumber() {
    return userDataBox.get("getUserPhoneNumber") as String;
  }
}
