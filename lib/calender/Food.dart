import 'package:flutter/material.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/text.dart';
import 'package:restaurant/const/styling.dart';
import 'package:get/get.dart';
import 'package:restaurant/data/numberOfPeople/addPeople.dart';

class Food extends StatefulWidget{
  const Food({super.key});

  @override
  State<StatefulWidget> createState() => _Food();
}

class _Food extends State<Food>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('Search Restaurant'),
    ),
      body:
      Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Dimensions.spacebtwnContainer,),
            Text(DefineText.searchRstntText,
            style: TextStyle(fontSize: Dimensions.textSizeSearch,color: rColor.infoDisplayFont ),textAlign: TextAlign.center),
            ],
            ),
          const SizedBox(height: Dimensions.spacebtwnContainer,),
            Container(
              height: Dimensions.foodContainerHeight*0.85,
              width:Dimensions.foodContainerWidth,
              decoration: BoxDecoration(
              border: Border.all(color: rColor.calenderContainer,),
              ),

            child: Padding(
              padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                const Text("Food",style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.medium)),
                const SizedBox(height: Dimensions.spacebtwnfoodContainer,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height:Dimensions.discountHeight ,
                      width: Dimensions.discountWidth,
                        decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius:0.3)],
                          border: Border.all(color: rColor.discountBorder),borderRadius: const BorderRadius.all(Radius.circular(5))
                        ),
                      child: Column(
                        children: [
                           const Expanded
                            ( flex : 2,
                              child:  Center(child: Text("14:00", style: TextStyle(fontSize: Dimensions.textSizeSmall),))),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: rColor.discountContainer,
                                  boxShadow: [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius:0.3)],
                                  borderRadius:BorderRadius.only(bottomLeft:Radius.circular(5),bottomRight: Radius.circular(5)) ,
                            ),
                            child: const Text("-30%",style: TextStyle(color: rColor.discountFont,fontSize: Dimensions.textSizeSmall),),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height:Dimensions.discountHeight ,
                      width: Dimensions.discountWidth,
                      decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius:0.3)],
                          border: Border.all(color: rColor.discountBorder),borderRadius: const BorderRadius.all(Radius.circular(5))
                      ),
                      child: Column(
                        children: [
                          const Expanded
                            ( flex : 2,
                              child:  Center(child: Text("14:00", style: TextStyle(fontSize: Dimensions.textSizeSmall),))),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: rColor.discountContainer,
                                boxShadow: [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius:0.3)],
                                borderRadius:BorderRadius.only(bottomLeft:Radius.circular(5),bottomRight: Radius.circular(5)) ,
                              ),
                              child: const Text("-30%",style: TextStyle(color: rColor.discountFont,fontSize: Dimensions.textSizeSmall),),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height:Dimensions.discountHeight ,
                      width: Dimensions.discountWidth,
                      decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius:0.3)],
                          border: Border.all(color: rColor.discountBorder),borderRadius: const BorderRadius.all(Radius.circular(5))
                      ),
                      child: Column(
                        children: [
                          const Expanded
                            ( flex : 2,
                              child:  Center(child: Text("14:00", style: TextStyle(fontSize: Dimensions.textSizeSmall),))),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: rColor.discountContainer,
                                boxShadow: [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius:0.3)],
                                borderRadius:BorderRadius.only(bottomLeft:Radius.circular(5),bottomRight: Radius.circular(5)) ,
                              ),
                              child: const Text("-30%",style: TextStyle(color: rColor.discountFont,fontSize: Dimensions.textSizeSmall),),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                  const SizedBox(height: Dimensions.spacebtwnfoodContainer,),
                  const Text("Dinner",style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.medium)),
                  const SizedBox(height: Dimensions.spacebtwnfoodContainer,),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                        Container(
                          height:Dimensions.discountHeight ,
                          width: Dimensions.discountWidth,
                          decoration: BoxDecoration(
                              boxShadow: const [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius:0.3)],
                              border: Border.all(color: rColor.discountBorder),borderRadius: const BorderRadius.all(Radius.circular(5))
                            ),
                          child: const Center(child: Text("21:30", style: TextStyle(fontSize: Dimensions.textSizeSmall),))),
                        Container(
                            height:Dimensions.discountHeight ,
                            width: Dimensions.discountWidth,
                            decoration: BoxDecoration(
                                boxShadow: const [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius:0.3)],
                                border: Border.all(color: rColor.discountBorder),borderRadius: const BorderRadius.all(Radius.circular(5))
                                ),
                          child: const Center(child: Text("22:00",style: TextStyle(fontSize: Dimensions.textSizeSmall),)),),
              ],
            ),
          ],
        ),),
        ),
          const SizedBox(height: Dimensions.spacebtwnContainer,),
         Positioned(
            right: 0,
            child: TextButton(
              onPressed:() {
              Get.to(const AddPeople());
                  } ,
                child:
                const Text("Next >",
                style: TextStyle(fontSize:Dimensions.textSizeDefault,color: Colors.green,decoration: TextDecoration.underline)),)),
        //textDirection: TextDirection.rtl,),,
        ],
        ),
      ),
      );
    }

  }