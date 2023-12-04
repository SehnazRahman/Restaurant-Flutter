import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/data/home/MyHome/home.dart';
class Confirm extends StatelessWidget {
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image(image: AssetImage('Assets/images/star.png'))),
            SizedBox(height:Dimensions.spacebtwnContainer),
            Text("CONGRATULATIONS!",
              style: TextStyle(
                  fontSize: Dimensions.textSizeMedium,
                  fontWeight: Dimensions.semiBold),),
            SizedBox(height:Dimensions.spacebtwnSmallContainer),
            Text("Your Booking has been confirmed.",
              style: TextStyle(
                  fontSize: Dimensions.textSizeSearch),),
            SizedBox(height: Dimensions.spacebtwnContainer),
            TextButton(
              child: const Text("Go back to home page",
                  style: TextStyle( decoration: TextDecoration.underline,
                    fontSize: Dimensions.textSizeSmall, color: Colors.green,)),
              onPressed: () {
                Get.to(const Home());
              },
            )
          ],
        ),
      ),
    );
  }
}
