import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/Authorization/view/signIn.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/splashscreen/splashScreen.dart';
import 'package:restaurant/const/color.dart';
import 'Authorization/controller/authController.dart';
void main(){
  Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:'Restaurant',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       body: Column(
           children: [
           Container(
             padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
             height: 670,
             decoration: const BoxDecoration(
                 color: Colors.green,
                 borderRadius: BorderRadius.only(
                     bottomLeft: Radius.elliptical(50, 15),
                     bottomRight: Radius.elliptical(450, 400))),
             child:  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Align(
                   alignment: Alignment.bottomRight,
                 ),
                 const SizedBox(
                   height: 100,
                 ),
                 const Text(
                   "Welcome to",
                   style: TextStyle(fontSize: 24, color: Colors.white),
                   textAlign: TextAlign.left,
                 ),
                 const SizedBox(
                   height: 15,
                 ),
                 const Text(
                   "theforks",
                   style: TextStyle(
                     fontSize: 50,
                     fontWeight: FontWeight.w900,
                     color: Colors.white,
                   ),
                   textAlign: TextAlign.left,
                 ),
                 const SizedBox(
                   height: 15,
                 ),
                 const Text(
                     "A place that gives your hunger a new option and where desires meet with a new food",
                     style: TextStyle(fontSize: 18, color: Colors.white),
                     textAlign: TextAlign.left),

                 const SizedBox(
                   height: 50,
                 ),
                 const Text(
                   "Let's Get Started.",
                   style: TextStyle(fontSize: 16, color: Colors.white),
                   textAlign: TextAlign.left,
                 ),
                 const SizedBox(
                   height: 15,
                 ),
                 Container(
                   height: 50,
                   width: 240,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: rColor.whiteContainer),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset('Assets/images/googlebg.png', height: 25,width: 25,),
                         const Text("Continue with Google",
                             style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold,color: rColor.fontOverWhite))
                       ]),
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 Container(
                   height: 50,
                   width: 240,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: rColor.whiteContainer),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Image.asset('Assets/images/attheratebg.png', height: 25,width: 25,),
                       const Text(" Continue with Google",
                           style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold,color: rColor.fontOverWhite))
                     ],
                   ),
                 ),
               ],
             ),
           ),

           Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const Text("Already have an account?",
                     style:
                     TextStyle(fontSize: 18, color: Colors.black)),
                 TextButton(
                   child: const Text("Login",
                       style: TextStyle( decoration: TextDecoration.underline,
                         fontSize: 18, color: Colors.green,)),
                   onPressed: () {
                     Get.to(const LoginPage());
                   },
                 )]),
         ],
       )
   );
  }
  
}