import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/Authorization/view/signIn.dart';
import 'package:restaurant/const/color.dart';
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
               Text(
                "Welcome to",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 15,
              ),
              Text("theforks",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 15,
              ),
               Text(
                  "A place that gives your hunger a new option and where desires meet with a new food",
                  style:Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.left),

              const SizedBox(
                height: 50,
              ),
              Text(
                "Let's Get Started.",
                style: Theme.of(context).textTheme.bodyLarge,
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
                    color: colorDecoration.whiteContainer),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('Assets/images/img_1.png', height: 25,width: 25,),
                      const Text("  Continue with Google",
                          style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold,color: colorDecoration.fontOverWhite))
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
                    color: colorDecoration.whiteContainer),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('Assets/images/img.png', height: 25,width: 25,),
                    const Text("  Continue with Email",
                        style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold,color: colorDecoration.fontOverWhite))
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