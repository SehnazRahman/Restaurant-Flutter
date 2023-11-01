import 'package:flutter/material.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/const/color.dart';
import 'package:get/get.dart';

class Description extends StatefulWidget{
  const Description({super.key});

  @override
  State<StatefulWidget> createState() => _Description();

}

class _Description extends State<Description>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Dimensions.descriptionHeight,
        width: Dimensions.descriptionWidth,
        decoration: BoxDecoration(
          border: Border.all(color: rColor.greenContainer,),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: Dimensions.descriptionOfferHeight,
                      width: Dimensions.descriptionOfferWidth,
                      decoration: const BoxDecoration(
                      color: rColor.greenContainer,
                      borderRadius:BorderRadius.all(Radius.circular(6)) ),
                          child: const Center(
                            child: Text('-30%',
                        style: TextStyle(fontSize: Dimensions.textSizeDefault,color: rColor.fontOverGreen),),
                          )),
                  const SizedBox(width: Dimensions.spacebtwnContainer,),
                  const Text('-30% on menu!',style: TextStyle(fontSize: Dimensions.homeDeal, fontWeight: Dimensions.medium),),
                ],
              ),
              const SizedBox(height: Dimensions.spacebtwnContainer,),
              const Text('Drinks and Menus not included.Valid in the selected time slot', style: TextStyle(fontSize: Dimensions.textSizeSmall),),
              const SizedBox(height: Dimensions.spacebtwnItem),
              TextButton(onPressed:(){
                showDialog(context: context, builder: (context) {
                  return Center(
                    child: Container(
                      height:Dimensions.dialogueBoxHeight,
                      width:Dimensions.dialogueBoxWidth,
                      decoration: BoxDecoration(
                        color: rColor.whiteContainer,
                        border: Border.all(color: rColor.greenContainer,),),
                      child:
                            Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Text("Drinks and Menu not included",style: TextStyle(fontSize: Dimensions.textSizeSearch,color: rColor.grey),),
                                      const SizedBox(height: Dimensions.spacebtwnContainer,),
                                      const Text("Valid in the selected time slot",style: TextStyle(fontSize: Dimensions.textSizeSearch,color: rColor.grey),),
                                      const SizedBox(height: Dimensions.spacebtwnContainer,),
                                      Container(
                                        height: Dimensions.descriptionBookOfferHeight,
                                        width: Dimensions.descriptionBookOfferWidth,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: rColor.greenContainer,),),
                                        child: TextButton(onPressed: () {
                                          Get.back();
                                        },
                                        child: const Text("BOOK WITH THIS OFFER",
                                            style: TextStyle(fontSize: Dimensions.textSizeSmall,fontWeight: Dimensions.medium,color: rColor.grey)),),
                                      )],
                            ),
                        ),
                  );
                });
              },
                  child: const Text("See Offer Details",
                      style: TextStyle(fontSize: Dimensions.textSizeSmall,fontWeight: Dimensions.medium,color: rColor.fontOverWhite))),
              Container(
              height: Dimensions.descriptionBookOfferHeight,
              width: Dimensions.descriptionBookOfferWidth,
              decoration: BoxDecoration(
                border: Border.all(color: rColor.greenContainer,),),
                child: const Center(child: Text("BOOK WITH THIS OFFER",
                    style: TextStyle(fontSize: Dimensions.textSizeSmall,fontWeight: Dimensions.medium, color:rColor.grey))),),
            ],
          ),
        ),
      )
    );
  }
}