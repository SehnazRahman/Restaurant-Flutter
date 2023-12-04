import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/cancellation/reservationCancel.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';

class CancelBooking extends StatefulWidget {
  const CancelBooking({super.key});

  @override
  State<CancelBooking> createState() => _CancelBooking();
}

class _CancelBooking extends State<CancelBooking> {
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
          SizedBox(height: Dimensions.spacebtwnContainer),
          Text("Are you sure you want to cancel the booking?",
            style: TextStyle(
              fontSize: Dimensions.textSizeSearch,color: rColor.infoDisplayFont
            ),),
              SizedBox(height: Dimensions.spacebtwnContainer),
              SizedBox(
                height:Dimensions.confirmationheight,
                width: Dimensions.confirmationWidth,
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(const ReservationCancel());
                  }, child: Text('Yes'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    textStyle: const TextStyle(
                        fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                  ),
                ),
              ),
              SizedBox(height: Dimensions.spacebtwnContainer),
              SizedBox(
                height:Dimensions.confirmationheight,
                width: Dimensions.confirmationWidth,
                child: ElevatedButton(
                  onPressed: (){
                  Get.to(const ());
                    }, child: Text('No',style:TextStyle(color: Colors.green)),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    textStyle: const TextStyle(
                    fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
              ),
              ),
              ),
    ]));
  }
}