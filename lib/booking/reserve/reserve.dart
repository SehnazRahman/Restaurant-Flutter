import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/booking/emailid/emailid.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';

class ReserveNow extends StatefulWidget{
  const ReserveNow({super.key});

  @override
  State<StatefulWidget> createState() => _ReserveNow();
}

class _ReserveNow extends State<ReserveNow>{
  bool isPressed =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            elevation: 0,
            title: const Text('Search Restaurant'),
          ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Dimensions.spacebtwnContainer,),
            const Text("Select any of the offer given below",style:
            TextStyle(fontSize: Dimensions.textSizeSearch,color: rColor.infoDisplayFont),),
            const SizedBox(height: Dimensions.spacebtwnContainer,),
            Container(
              height: Dimensions.checkBoxCntnrheight,
              width: MediaQuery.of(context).size.width*0.95,
              decoration: BoxDecoration(
                border: Border.all(color: rColor.selectedBorder,),borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: Dimensions.descriptionOfferHeight*0.7,
                        width: Dimensions.descriptionOfferWidth*0.7,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: rColor.discountContainer,),
                        child: const Center(
                          child: Text('-30%',
                            style: TextStyle(fontSize: Dimensions.textSizeSmall,color: rColor.discountFont ),),
                        ),
                      ),
                      const SizedBox(width: Dimensions.spacebtwnSmallContainer,),
                      const Text('-30% on menu!',
                        style: TextStyle(fontSize: Dimensions.textSizeSmall,color: rColor.fontDefault,fontWeight: Dimensions.medium),),
                    ],
                  ),
                  const SizedBox(height: Dimensions.spacebtwnSmallContainer,),
                    Padding(
                     padding: const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         const Text('  Drinks and Menus not include.',
                            style: TextStyle(fontSize: Dimensions.textSizeDefault,color: rColor.fontDefault,),),
                          IconButton(
                            style: IconButton.styleFrom(foregroundColor: isPressed? Colors.green: Colors.green,
                            ),
                            onPressed: () {
                              setState(() {
                                isPressed = !isPressed;
                              });
                            },
                              icon: const Icon(Icons.check_circle_outline_sharp,size: 25,),)
                       ],
                     ),
                   ),
                ],
              ),
            ),
            const SizedBox(height: Dimensions.spacebtwnItem,),
            Container(
              height: Dimensions.checkBoxCntnrheight,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: rColor.selectedBorder,),borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Column(
                        children: [
                          SizedBox(height: Dimensions.spacebtwnContainer,),
                          Text('Make a reservation without any special offer',
                            style: TextStyle(fontSize: Dimensions.textSizeDefault,color: rColor.fontDefault,),),
                          Text('The standard “a la carte” reservation without offer',
                            style: TextStyle(fontSize: Dimensions.textSizeSearch
                              ,color: rColor.infoDisplayFont,),),
                        ],
                      ),
                      IconButton(
                        style: IconButton.styleFrom(backgroundColor: isPressed? Colors.green: Colors.green
                        ),
                        onPressed: () {
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                        icon: const Icon(Icons.check_circle_outline_sharp,color:Colors.green,size: 25,),isSelected: false,),
                    ],
                  ),),
              const SizedBox(height: Dimensions.spacebtwnContainer,),
              Container(
                  height: Dimensions.reserveNowHeight,
                  width: Dimensions.reserveNowWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: rColor.greenContainer),
                  child:ElevatedButton(
                  onPressed: (){
                      Get.to(const BookingEmailid());
                      }, child: const Text('Reserve Now'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          textStyle: const TextStyle(
                              fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                        ),)
      ),]))
    );
  }

}
