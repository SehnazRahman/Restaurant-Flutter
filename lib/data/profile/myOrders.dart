import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/data/home/MyHome/home.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.green,
          title: const Text('My Orders'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Assets/images/noorders.png',height: 200, width: 150,),
            const SizedBox(height: Dimensions.spacebtwnItem),
            const Text('No orders yet',
              style: TextStyle(fontSize: Dimensions.textSizeSemiLarge, fontWeight: Dimensions.semiBold),),
            const SizedBox( height: Dimensions.spacebtwnContainer),
            const Center(
              child: Text('You don’t have any orders yet. Try one of our awesome restaurants and place your first order!',
              style: TextStyle(fontSize: Dimensions.textSizeSearch),textAlign: TextAlign.center),
            ),
            const SizedBox(height: Dimensions.spacebtwnContainer),
            Container(
                height: Dimensions.containerHeight,
                width: Dimensions.containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),),
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(const Home());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    textStyle: const TextStyle(
                        color: Colors.white, fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                  ), child: const Text('Browse Restaurants'),
                )),
          ],
        ),
      ),
    );
  }
}
