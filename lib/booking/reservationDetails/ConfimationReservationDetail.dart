import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';

class ReservationDetail extends StatefulWidget {
  const ReservationDetail({super.key});

  @override
  State<ReservationDetail> createState() => _ReservationDetailState();
}

class _ReservationDetailState extends State<ReservationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
            Get.back();
          },),
        ),

        body: Column(
            children: [

      Stack(
        children:[ Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
            image:AssetImage('Assets/images/Restaurant.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
        )
        ),
              height:Dimensions.bookingImageHeight,
              width: Dimensions.bookingImageWidth,
          child:const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Booking',style: TextStyle(fontSize: Dimensions.textSizeSearch, color: Colors.white),),
              Text('2 People | Thu 31 March | 14:30',style: TextStyle(fontWeight: Dimensions.medium,fontSize: Dimensions.textSizeSearch, color: Colors.white),)
              ],
          )
          ),
          ]),
          const SizedBox(height: Dimensions.spacebtwnContainer),
          const Text("Add your data  to complete the reservation",
          style: TextStyle(fontSize: Dimensions.textSizeSearch,color: rColor.selectedBorder),),
              Row(
                children: [
                  Column(
                    children: [
                      const Text("Name", style: TextStyle(fontSize:Dimensions.textSizeSmall,fontWeight: Dimensions.medium)),
                      TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Mandatory",
                      hintStyle: const TextStyle(color: Colors.grey,fontStyle: FontStyle.italic,fontSize: Dimensions.textSizeDefault),
                      focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                      BorderSide(color: rColor.greenContainer,width:2)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                      const BorderSide(color: rColor.greenContainer,width: 2)),
                    ),
                  ),
                  ]),
                ],
              )
    ])
    );
  }
}