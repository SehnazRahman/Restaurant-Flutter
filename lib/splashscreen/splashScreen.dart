import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer (const Duration(seconds: 10), () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (WelcomeScreen())));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.green,
            child: Center(
                child: SizedBox(
                  height: 100,
                  width: 150,
                  child : Image.asset('Assets/images/cutlerybg.png',),)
            )
        )
    );
  }
}