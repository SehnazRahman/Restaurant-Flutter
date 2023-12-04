import 'package:get/get.dart';
import 'package:restaurant/Authorization/view/signIn.dart';
import 'package:restaurant/const/color.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/const/styling.dart';

class welcome extends StatelessWidget {
  const welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
          height: MediaQuery.of(context).size.height * 0.9,
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(50, 15),
                  bottomRight: Radius.elliptical(450, 400))),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 150,
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
                height: Dimensions.containerHeight,
                width: Dimensions.containerWidth * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: rColor.whiteContainer),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('Assets/images/img_1.png', height: 25,width: 25,),
                      const Text("  Continue with Google",
                          style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold,color: rColor.fontOverWhite))
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: Dimensions.containerHeight,
                width: Dimensions.containerWidth * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: rColor.whiteContainer),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('Assets/images/img.png', height: 25,width: 25,),
                    const Text("  Continue with Email",
                        style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold,color: rColor.fontOverWhite))
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: Dimensions.spacebtwnContainer),

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
    );
  }
}