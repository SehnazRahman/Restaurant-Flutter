import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/booking/reservationDetails/ConfimationReservationDetail.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';

class BookingEmailid extends StatefulWidget {
  const BookingEmailid({super.key});

  @override
  State<BookingEmailid> createState() => _BookingEmailidState();
}

class _BookingEmailidState extends State<BookingEmailid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('Enter Email'),
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
          const Text("Indicate your email address to complete the reservation",
            style: TextStyle(fontSize: Dimensions.textSizeSearch,color: rColor.selectedBorder),),
          Padding(
            padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Email", style: TextStyle(fontSize:Dimensions.textSizeDefault)),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.alternate_email_sharp, color: Colors.red,),
                      hintText: "Ex: abc@example.com",
                      hintStyle: const TextStyle(color: Colors.grey,fontStyle: FontStyle.italic,fontSize: Dimensions.textSizeDefault),
                      focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                      BorderSide(color: rColor.greenContainer,width:2)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                      const BorderSide(color: rColor.greenContainer,width: 2)),
                    ),
                  ),
                  const SizedBox(height: Dimensions.spacebtwnContainer),
                Container(
                    height: Dimensions.containerHeight,
                    width: Dimensions.containerWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: rColor.greenContainer),
                    child:ElevatedButton(
                      onPressed: (){
                        Get.to(const ReservationDetail());
                      }, child: const Text('Continue'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        textStyle: const TextStyle(
                            fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                      ),)
                ),
                const SizedBox(height: Dimensions.spacebtwnContainer),
                const Center(child: Text('or',style: TextStyle(
                    fontSize: Dimensions.textSizeDefault,color: rColor.infoDisplayFont))),
                const SizedBox(height: Dimensions.spacebtwnContainer),
                Container(
                    height: Dimensions.containerHeight,
                    width: Dimensions.containerWidth,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: Colors.green,blurRadius:5.0,spreadRadius:2.0,blurStyle: BlurStyle.outer)],
                        borderRadius: BorderRadius.circular(10),
                        color: rColor.whiteContainer),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('Assets/images/googlebg.png', height: 25,width: 25,),
                          const Text(" Continue with Google",style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold,color: rColor.fontOverWhite))
                        ]
                    )),
                const SizedBox(height: Dimensions.spacebtwnContainer*0.5,),
                Container(
                    height: Dimensions.containerHeight,
                    width: Dimensions.containerWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: rColor.fbContainer),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('Assets/images/img_2.png', height: 25,width: 25,),
                          const Text(" Continue with Facebook",style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold,color: rColor.fontOverGreen))
                        ]
                    )),
            ],),),
        ],)
    );
  }
}
