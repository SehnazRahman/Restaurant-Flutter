import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/Authorization/view/welcome.dart';
import 'package:restaurant/homeDemo/homeController.dart';
import 'package:restaurant/splashscreen/splashScreen.dart';
import 'package:restaurant/theme/theme.dart';
import 'Authorization/controller/authController.dart';
void main(){
  Get.put(AuthController());
  Get.put(HomePageController());
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: DecorationTheme.lightTheme,
      title:'Restaurant',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return const Scaffold(
       body: welcome()
   );
  }
  
}
