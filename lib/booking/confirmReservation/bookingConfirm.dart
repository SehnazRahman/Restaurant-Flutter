import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';
import '../../cancellation/cancelBooking.dart';
import '../../location/destinationLocation.dart';

class BookingConfirm extends StatefulWidget {
  const BookingConfirm({super.key});

  @override
  State<BookingConfirm> createState() => _BookingConfirm();
}

class _BookingConfirm extends State<BookingConfirm> {
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

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              Stack(
                  children: [ Container(
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
                                color: Colors.white),)
                        ],
                      )
                  ),
                  ]),

               Padding(
                padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
                child: Column(
                  children: [
                    const Center(
                      child: Text("The reservation is confirmed.",
                          style : TextStyle(
                            color:rColor.infoDisplayFont,
                          fontSize:Dimensions.textSizeSearch,)),
                    ),
                    const Center(
                child: Text("You will receive a confirmation by email.",
                    style : TextStyle(
                      color:rColor.infoDisplayFont,
                      fontSize:Dimensions.textSizeSearch,)),
              ),
                    const Center(
                child: Text("Your 100  Yums will be added to your account.",
                    style : TextStyle(
                      color:rColor.infoDisplayFont,
                      fontSize:Dimensions.textSizeSearch,)),
              ),
                    const SizedBox(height: Dimensions.spacebtwnContainer),
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
                                        Get.to(const DestinationLocation());
                                      },
                                        icon: const Icon(Icons.location_on_outlined,size: 50,),color: Colors.green,
                                    )
                                      ),
                                const SizedBox(height: Dimensions.spacebtwnContainer),
                                const Text("How to get?",style:
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
                                        Get.to (const CancelBooking());
                                      },
                                      icon: const Icon(Icons.delete_outline_rounded,size: 50),color: Colors.red,
                                    )
                                ),
                                const SizedBox(height: Dimensions.spacebtwnContainer),
                                const Text("Cancel Booking",style:
                                TextStyle(fontSize: Dimensions.textSizeSearch))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

   ]), )
            ])
    );
  }
}