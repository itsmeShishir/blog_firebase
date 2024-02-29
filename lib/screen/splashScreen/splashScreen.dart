import 'dart:async'; // Add this import statement

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key); // Fix the constructor

  static const String route = "/";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Fix the method name
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bG9nb3xlbnwwfHwwfHx8MA%3D%3D",
              width: 50,
              height: 50,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text.rich(
              TextSpan(
                text: "Hello",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                children: [
                  TextSpan(
                    text: "Shop",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CircularProgressIndicator(
              color: Color.fromARGB(255, 255, 17, 0),
            ),
          ],
        ),
      ),
    );
  }
}
