import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';
import '../data/home/MyHome/home.dart';
import '../registration/verification.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () { Get.back(); },
              icon: const Icon(Icons.arrow_back_sharp,color: Colors.black)),
          elevation: 0,
        ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
            child: Column(
              children: [
                const Text("Grant your location access",
                style: TextStyle(fontSize:Dimensions.textSizeExtraLarge, fontWeight: FontWeight.bold, color: colorDecoration.fontOverWhite )),
                const Text("thefork needs your location to show the availability of your area",
                style: TextStyle(fontSize: Dimensions.textSizeDefault),),
                const SizedBox(
                  height: Dimensions.spacebtwnItem,
                ),
                Container(
                  height: Dimensions.containerHeight,
                  width: Dimensions.containerWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),),
                    child: ElevatedButton(
                      onPressed: (){
                        Get.to(const Verification());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        textStyle: const TextStyle(
                            color: Colors.white, fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                      ), child: const Text('Use current location'),
                    )
                ),
                const SizedBox(
                  height: Dimensions.spacebtwnContainer,
                ),
                Container(
                    height: Dimensions.containerHeight,
                    width: Dimensions.containerWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),),
                    child: ElevatedButton(
                      onPressed: (){
                        Get.to(const Home());
                      }, child: const Text('Select another location', style: TextStyle(color: Colors.green, fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold )),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorDecoration.whiteContainer,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      ),
                    )
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
