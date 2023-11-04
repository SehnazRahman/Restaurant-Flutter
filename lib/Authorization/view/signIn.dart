import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/Authorization/view/signup.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';
import '../controller/authController.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  AuthController authCtrl = Get.find<AuthController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
      SizedBox(
        height: 50,
        child: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
          Get.back();
        },),
      ),
       Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
              const Text("Login", style: TextStyle(fontSize: Dimensions.textSizeExtraLarge, fontWeight: FontWeight.w900, color: rColor.fontOverWhite,)),
        const SizedBox(
          height: 10,
        ),
        const Text("Login now to order your favourite meal and for reservations", style: TextStyle(fontSize: Dimensions.textSizeDefault,)),
        const SizedBox(
          height: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Email", style: TextStyle(fontSize:Dimensions.textSizeDefault)),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.alternate_email_rounded, color: Colors.green,),
                hintText: "Enter Email Id",
                focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                BorderSide(color: rColor.greenContainer,width:2)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                const BorderSide(color: rColor.greenContainer,width: 2)),
              ),
              controller: authCtrl.emailCtrl,
            ),
            const SizedBox(
              height: Dimensions.spacebtwnContainer,
            ),
             const Text("Password",style: TextStyle(fontSize: Dimensions.textSizeDefault,)),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.remove_red_eye_outlined,color: Colors.green,),
                  hintText: "Enter the password",
                  focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                  BorderSide(color: rColor.greenContainer,width:2)),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                  const BorderSide(color: rColor.greenContainer,width: 2)),
              ),
            ),
             SizedBox(height: Dimensions.spacebtwnSmallContainer,),
             const Text("Forget Password?", style: TextStyle(decoration: TextDecoration.underline,color: rColor.fontOverWhite,fontSize: 15),),
            const SizedBox(
              height: Dimensions.spacebtwnContainer,
            ),
          Container(
            height: Dimensions.containerHeight,
            width: Dimensions.containerWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: rColor.greenContainer),
            child: const Center(
              child: Text("Login", style: TextStyle(fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold,color: rColor.fontOverGreen,),textAlign: TextAlign.center,
          ),
            )),
            const SizedBox(
              height: Dimensions.spacebtwnItem,
            ),
            Container(
                height: Dimensions.containerHeight,
                width: Dimensions.containerWidth,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(color: Colors.green,blurRadius:5.0,spreadRadius:2.0,blurStyle: BlurStyle.outer)],
                    borderRadius: BorderRadius.circular(20),
                    color: rColor.whiteContainer),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('Assets/images/googlebg.png', height: 25,width: 25,),
                      const Text("Continue with Google",style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold,color: rColor.fontOverWhite))
                    ]
                )),
            const SizedBox(
              height: Dimensions.spacebtwnContainer,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",
                      style:
                      TextStyle(fontSize: 18, color: Colors.black)),
                  TextButton(
                    child: const Text("Register",
                        style: TextStyle( decoration: TextDecoration.underline,
                          fontSize: 18, color: Colors.green,)),
                    onPressed: () {
                      Get.to(const Registration());
                    },
                  )]),
          ],
        ),
      ],
          ),
        ),]),
    );
  }
}
