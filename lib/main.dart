import 'package:e_commerce_app/screens/home.dart';
import 'package:e_commerce_app/screens/main_login_screen.dart';
import 'package:e_commerce_app/services/helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    getUserLoggedInStatus();
    super.initState();
  }

  bool loginSatus = false;

  getUserLoggedInStatus() async {
    await HelperFunctions().getIfUserLoggedIn().then((value) {
      if (value != null) {
        //Either true or false
        // if (value) {
        //   return true;
        // } else {
        //   return false;
        // }
        loginSatus = value;
      } else {
        //show Login Screen
        return false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
      home: loginSatus ? const HomePage() : const LoginScreen(),
      routes: {
        '/main-login-screen': (context) => const MainLoginScreen(),
      },
    );
  }
}
