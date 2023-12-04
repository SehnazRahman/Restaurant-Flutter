import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restaurant/const/color.dart';

import '../const/styling.dart';

class ReservationCancel extends StatelessWidget {
  const ReservationCancel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), onPressed: () {
          Get.back();
        },),
      ),

      body:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

        Stack(
            children: [
        Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage('Assets/images/Restaurant.jpg'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
            Colors.black54, BlendMode.darken)
    )
    ),
        height: Dimensions.bookingImageHeight,
        width: Dimensions.bookingImageWidth,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Booking', style: TextStyle(
          fontSize: Dimensions.textSizeSearch,
          color: Colors.white),),
          Text('2 People | Thu 31 March | 14:30',
          style: TextStyle(fontWeight: Dimensions.medium,
          fontSize: Dimensions.textSizeSearch,
          color: Colors.white),),
    ],
    )
    ),
    ]),
            const SizedBox(height: Dimensions.spacebtwnContainer,),
            const Center(
              child: Text("The reservation is confirmed.",
                  style : TextStyle(
                    color:rColor.infoDisplayFont,
                    fontSize:Dimensions.textSizeSearch,)),
            ),
            const SizedBox(height: Dimensions.spacebtwnContainer,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
                    child: Column(
                      children: [
                        Container(
                            height: Dimensions.squareContainerHeight,
                            width: Dimensions.squareContainerWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              boxShadow: const [
                                BoxShadow(color: Colors.grey,blurRadius:2.0,spreadRadius:2.0,blurStyle: BlurStyle.outer)],
                            ),
                            child:IconButton(
                              onPressed: () {
                                Get.to (const());
                              },
                              icon: const Icon(Icons.date_range_sharp,size: 50),color: Colors.green,
                            )
                        ),
                        const SizedBox(height: Dimensions.spacebtwnContainer),
                        const Text("Make a reservation",style:
                        TextStyle(fontSize: Dimensions.textSizeSearch))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            height: Dimensions.squareContainerHeight,
                            width: Dimensions.squareContainerWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              boxShadow: const [
                                BoxShadow(color: Colors.grey,blurRadius:2.0,spreadRadius:2.0,blurStyle: BlurStyle.outer)],
                            ),
                            child:IconButton(
                              onPressed: () {
                                Get.to (const ());
                              },
                              icon: const Icon(Icons.search,size: 50),color: Colors.green,
                            )
                        ),
                        const SizedBox(height: Dimensions.spacebtwnContainer),
                        const Text("Search for restaurant",style:
                        TextStyle(fontSize: Dimensions.textSizeSearch))
                      ],
                    ),
                  ),
                ),
              ],
            ),
    ])
    );
  }
}
