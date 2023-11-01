import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/data/home/description/description.dart';
import 'package:restaurant/data/home/incoming/incoming.dart';


class Home extends StatefulWidget{
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    //Tab(text: 'Home', icon: Icon(Icons.home_filled)),
    //Tab(text: 'Cart',icon: Icon(Icons.shopping_cart_outlined)),
    // Tab (text:'Profile', icon: Icon(Icons.person_outline)),
    return Scaffold(
        bottomNavigationBar:BottomNavigationBar(
            items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
            icon:Icon(Icons.home_filled),
            label: 'Home'),
        BottomNavigationBarItem(
            icon:Icon(Icons.shopping_cart_outlined),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon:Icon(Icons.person_outline),
            label: 'Profile'),
      ],
    ),
      body:  Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
        child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const SizedBox(height: Dimensions.spacebtwnItem),
                    const Text("Good Afternoon!",style: TextStyle(fontSize: Dimensions.textSizeSmall,color:rColor.grey)),
                    const Text("David Watson",style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.medium)),
                    const SizedBox(height: Dimensions.spacebtwnItem,),
                    const Text("Find your best meal..",style: TextStyle(fontSize: Dimensions.textSizeSemiLarge,fontWeight: Dimensions.medium)),
                    const SizedBox(height: Dimensions.spacebtwnContainer,),
                    Container(
                      height: Dimensions.searchHeight,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: rColor.greenContainer,),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                         const Padding(
                           padding: EdgeInsets.all(Dimensions.paddingSizeTine),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.search, color: rColor.grey,),
                              Text("Type of cuisine,name of restaurant...",
                                style: TextStyle(fontSize: Dimensions.textSizeSearch,color: rColor.grey),),
                            ],
                        ),
                         ),
                        Container(
                          height: Dimensions.searchHeight,
                          width: Dimensions.searchGoWidth,
                          decoration: const BoxDecoration(
                            color: rColor.greenContainer,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                          ),
                          child: const Center(child: Text('GO', style: TextStyle(fontSize: Dimensions.textSizeDefaultLarge,color: rColor.fontOverGreen),)),
                        ),
                      ],
                    ),),
                        const SizedBox(height: Dimensions.spacebtwnContainer,),

                        Flexible(
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
                                      color: rColor.greenContainer,
                                      borderRadius:BorderRadius.all(Radius.circular(6)) ),
                                    child:  Center(child: TextButton( onPressed: () {
                                      Get.to(Incoming());
                                    },
                                        child: Text('Incoming', style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: rColor.fontOverGreen),)),),),
                                  Container(height: Dimensions.ItemTabHeight,
                                       width:Dimensions.ItemTabWidth*0.8 ,
                                       decoration: const BoxDecoration(
                                           color: rColor.greenContainer,
                                           borderRadius:BorderRadius.all(Radius.circular(6)) ),
                                       child: const Center(child: Text('Dish', style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: rColor.fontOverGreen),)),),
                                  Container(height: Dimensions.ItemTabHeight,
                                       width:Dimensions.ItemTabWidth*0.8 ,
                                       decoration: const BoxDecoration(
                                           color: rColor.greenContainer,
                                           borderRadius:BorderRadius.all(Radius.circular(6)) ),
                                       child: const Center(child: Text('Dessert', style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: rColor.fontOverGreen),)),),
                                   Container(height: Dimensions.ItemTabHeight,
                                       width:Dimensions.ItemTabWidth*0.8 ,
                                       decoration: const BoxDecoration(
                                           color: rColor.greenContainer,
                                           borderRadius:BorderRadius.all(Radius.circular(6)) ),
                                       child: const Center(child: Text('Beverages', style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: rColor.fontOverGreen),)),),
                     ],
                   ),
                 ),),
                    const SizedBox(height: Dimensions.spacebtwnContainer,),
                    const Text('thefork Deals',style: TextStyle(fontSize: Dimensions.homeDeal),),
                    const SizedBox(height: Dimensions.spacebtwnItem,),
                    const Center(
                      child: SizedBox(
                        height: Dimensions.descriptionHeight,
                          width: Dimensions.descriptionWidth,
                          child: Description()),
                    ),
        ]),
      ),
    );
  }
}