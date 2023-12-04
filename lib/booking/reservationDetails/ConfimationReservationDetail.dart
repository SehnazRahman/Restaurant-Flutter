import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/booking/confirmReservation/bookingConfirm.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';

class ReservationDetail extends StatefulWidget {
  const ReservationDetail({super.key});

  @override
  State<ReservationDetail> createState() => _ReservationDetailState();
}

class _ReservationDetailState extends State<ReservationDetail> {
  bool emailcheck = false;
  bool smscheck = true;
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

        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of (context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
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
              Center(
                child: const Text("Add your data  to complete the reservation",
                style: TextStyle(fontSize: Dimensions.textSizeSearch,color: rColor.selectedBorder),),
              ),
                  Padding(
                    padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
                    child:
                        Row( mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Name",
                                        style: TextStyle(fontSize: Dimensions.textSizeSearch,fontWeight: Dimensions.medium),),
                                  TextFormField(
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        hintText: "Mandatory",
                                        hintStyle: const TextStyle(color: Colors.grey,fontStyle: FontStyle.italic,fontSize: Dimensions.textSizeDefault),
                                        focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                                        BorderSide(color: rColor.greenContainer,width:2)),
                                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                                        const BorderSide(color: rColor.selectedBorder,width: 2)),
                                      ),
                                    ),
                                  SizedBox(height: Dimensions.spacebtwnContainer,),
                                  Text("Phone Number",
                                    style: TextStyle(fontSize: Dimensions.textSizeSearch,fontWeight: Dimensions.medium)),
                                  TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: "ex: 62233445",
                                      hintStyle: const TextStyle(color: Colors.grey,fontStyle: FontStyle.italic,fontSize: Dimensions.textSizeDefault),
                                      focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                                      BorderSide(color: rColor.greenContainer,width:2)),
                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                                      const BorderSide(color: rColor.selectedBorder,width: 2)),
                                    ),
                                  ),
                                  SizedBox(height: Dimensions.spacebtwnContainer,),
                                  Text("Special Request for the restaurant",
                                    style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,),),
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: "eg: Do you want a table by win",
                                      hintStyle: const TextStyle(color: Colors.grey,fontStyle: FontStyle.italic,fontSize: Dimensions.textSizeDefault),
                                      focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                                      BorderSide(color: rColor.greenContainer,width:2)),
                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                                      const BorderSide(color: rColor.selectedBorder,width: 2)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: Dimensions.spacebtwnContainer,),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Surname",
                                    style: TextStyle(fontSize: Dimensions.textSizeSearch,fontWeight: Dimensions.medium),),
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: "Mandatory",
                                      hintStyle: const TextStyle(color: Colors.grey,fontStyle: FontStyle.italic,fontSize: Dimensions.textSizeDefault),
                                      focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                                      BorderSide(color: rColor.greenContainer,width:2)),
                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                                      const BorderSide(color: rColor.selectedBorder,width: 2)),
                                    ),
                                  ),
                                  SizedBox(height: Dimensions.spacebtwnContainer,),
                                  Text("Email Address",
                                    style: TextStyle(fontSize: Dimensions.textSizeSearch,fontWeight: Dimensions.medium),),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "abc@example.com",
                                      hintStyle: const TextStyle(color: Colors.grey,fontStyle: FontStyle.italic,fontSize: Dimensions.textSizeDefault),
                                      focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                                      BorderSide(color: rColor.greenContainer,width:2)),
                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                                      const BorderSide(color: rColor.selectedBorder,width: 2)),
                                    ),
                                  ),
                                  SizedBox(height: Dimensions.spacebtwnContainer,),
                                  Text("Offer Code",
                                    style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,),),
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: "eg: Welcome16",
                                      hintStyle: const TextStyle(color: Colors.grey,fontStyle: FontStyle.italic,fontSize: Dimensions.textSizeDefault),
                                      focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                                      BorderSide(color: rColor.greenContainer,width:2)),
                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                                      const BorderSide(color: rColor.selectedBorder,width: 2)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),


                  ),
                  Align(alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed:() {
                          Get.to(const ());
                        } ,
                        child:
                        const Text("Apply",
                            style: TextStyle(fontSize:Dimensions.textSizeDefault,color: Colors.green,decoration: TextDecoration.underline)),)),
                  Row(
                    children: [
                    Checkbox(
                    activeColor: Colors.green,
                        value: emailcheck, onChanged: (value){
                          setState(() {
                            emailcheck=value!;
                          });
                    }),
                      Expanded(
                        child: Text(
                            "I do not want to receive communications from TheFork via email, "
                                "and I will miss the best promotions, discounts with Yums and events. "
                                "(Even if I don't check the box, I can unsubscribe at any time).", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: rColor.infoDisplayFont),),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor:Colors.green ,
                          value: smscheck, onChanged: (value){
                            setState(() {

                              smscheck =value!;
                            });
                      }),
                      Expanded(
                        child: Text(
                          "I want to receive special offers and "
                              "communications from the restaurant by email and SMS.", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: rColor.infoDisplayFont),),
                      )
                    ],
                  ),
                  const SizedBox(height: Dimensions.spacebtwnContainer),
                  Center(
                    child: Container(
                        height: Dimensions.containerHeight,
                        width: Dimensions.containerWidth,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: rColor.greenContainer),
                        child:ElevatedButton(
                          onPressed: (){
                            Get.to(const BookingConfirm());
                          }, child: const Text('Confirm Reservation'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            textStyle: const TextStyle(
                                fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                          ),)
                    ),
                  ),
                  const SizedBox(height: Dimensions.spacebtwnContainer),
                  Center(
                    child: const Text("With this reservation, you will earn 100 Yums",
                      style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,),),
                  ),
                  const SizedBox(height: Dimensions.spacebtwnSmallContainer),
                  Center(
                    child: const Text("Free Service: Availabilty confirmed immediately",
                      style: TextStyle(fontSize: Dimensions.textSizeExtraSmall),),
                  ),
    ]),
          ),
        )
    );
  }
}