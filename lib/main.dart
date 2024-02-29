import 'package:flutter/material.dart';
import 'package:shop/screen/homeScreen/homeScree.dart';
import 'package:shop/screen/login/login.dart';
import 'package:shop/screen/register/register.dart';
import 'package:shop/screen/splashScreen/splashScreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context) => const SplashScreen(),
        "/login":(context) => const LoginScreen(),
        "/register":(context) => const RegisterScreen(),
      }
    );
  }
}