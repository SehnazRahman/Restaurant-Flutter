import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/data/home/beverages/beverages.dart';
import 'package:restaurant/data/home/description/description.dart';
import 'package:restaurant/data/home/dessert/dessert.dart';
import 'package:restaurant/data/home/dish/dish.dart';
import 'package:restaurant/data/home/incoming/incoming.dart';
import 'package:restaurant/homeDemo/homeController.dart';

class HomeDemo extends StatefulWidget {
  const HomeDemo({super.key});

  @override
  State<HomeDemo> createState() => _HomeDemoState();
}

class _HomeDemoState extends State<HomeDemo> {
  HomePageController homePageCtrl = Get.find<HomePageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Demo'),
          backgroundColor: Colors.green,
        ),
      body:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
                 children: [
                   SizedBox(
                     width: MediaQuery.of (context).size.width,
                     height: 50,
                     child: ListView.builder(
                       shrinkWrap: true,
                       scrollDirection: Axis.horizontal,
                       itemCount: homePageCtrl.containerNamesList.length,
                         itemBuilder: (BuildContext context,int index){
                         return GestureDetector(
                             onTap: (
                             ){
                           setState(() {
                             homePageCtrl.ind = index;
                           });
                          },
                          child: tabContainer(txt: homePageCtrl.containerNamesList[index]));
                           }),
                        ),
                 ],),
            if(homePageCtrl.ind == 0)
              Description(),
            if(homePageCtrl.ind == 1)
              Incoming(),
            if(homePageCtrl.ind == 2)
              Dish(),
            if(homePageCtrl.ind == 3)
              Dessert(),
            if(homePageCtrl.ind == 4)
              Beverages(),
    ],
    ),
      ),
    );
  }
  Padding tabContainer({String? txt}){
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 35,
        width: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Colors.green,
            width: 1,
          ),
        ),
        child: Center(
          child: Text('$txt', style: const TextStyle(
            color: Colors.green, fontSize: 12,
            fontWeight: FontWeight.bold,),
          ),
        ),
      ),
    );

  }
}

/* Flexible(
              child: SizedBox(
                height: Dimensions.ListTabHeight,
                width: Dimensions.ListTabWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: Dimensions.ItemTabHeight,
                      width:Dimensions.ItemTabWidth*0.8 ,
                      decoration: const BoxDecoration(
                          color: rColor.greenContainer,
                          borderRadius:BorderRadius.all(Radius.circular(6)) ),
                      child: const Center(child: Text('Description', style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: rColor.fontOverGreen),)),),
                    Container(height: Dimensions.ItemTabHeight,
                      width:Dimensions.ItemTabWidth*0.8,
                      decoration: const BoxDecoration(
                          color: rColor.whiteContainer,
                          borderRadius:BorderRadius.all(Radius.circular(6)) ),
                      child:  Center(child: TextButton(

                          onPressed: () {
                            Get.to(const ());
                          },
                          child: const Text('Incoming', style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: rColor.fontOverWhite),)),),),
                    Container(height: Dimensions.ItemTabHeight,
                      width:Dimensions.ItemTabWidth*0.8 ,
                      decoration: const BoxDecoration(
                          color: rColor.greenContainer,
                          borderRadius:BorderRadius.all(Radius.circular(6)) ),
                      child: Center(child: TextButton(

                          onPressed: () {
                            Get.to(const ());
                          }, */
                        /*  child: const Text('Dish',
                            style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: rColor.fontOverGreen),)),),),
                    Container(height: Dimensions.ItemTabHeight,
                      width:Dimensions.ItemTabWidth*0.8 ,
                      decoration: const BoxDecoration(
                          color: rColor.greenContainer,
                          borderRadius:BorderRadius.all(Radius.circular(6)) ),
                      child: Center(child: TextButton(

                          onPressed: () {
                            Get.to(const ());
                          },
                          child: const Text('Desserts',
                            style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: rColor.fontOverGreen),)),),),
                    Container(height: Dimensions.ItemTabHeight,
                      width:Dimensions.ItemTabWidth*0.8 ,
                      decoration: const BoxDecoration(
                          color: rColor.greenContainer,
                          borderRadius:BorderRadius.all(Radius.circular(6)) ),
                      child: Center(child: TextButton(

                          onPressed: () {
                            Get.to(const ());
                          },
                          child: const Text('Beverages',
                            style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: rColor.fontOverGreen),)),),),
                  ],
                ),
              ),),
            const SizedBox(height: Dimensions.spacebtwnContainer,),
                   const Center(
                      child: SizedBox(
                        height: Dimensions.descriptionHeight,
                        width: Dimensions.descriptionWidth,
                        child: Description()),
              ) */