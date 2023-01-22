import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  static String loginKey = "LOGINKEY";
  static String emailKey = "EMAILKEY";
  static String passwordKey = "PASSWORDKEY";

  Future<bool?> getIfUserLoggedIn() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getBool(loginKey);
  }
}
