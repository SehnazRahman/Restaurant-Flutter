import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/data/cart/productQuantity.dart';

class Dish extends StatefulWidget {
  const Dish ({super.key});

  @override
  State<Dish> createState() => _DishState();
}

class _DishState extends State<Dish> {
  double fullRating = 0;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
          child: Text('Dish', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(flex:6,
              child: Image.asset(
                'Assets/images/Sapaghetti_al_cartoccio.png',
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(width:Dimensions.spacebtwnSmallContainer),
            Expanded( flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const SizedBox(width: 200,child: Text('Sapaghetti al cartoccio (with seafood, garlic, parsley and finished in the oven)', style: TextStyle(fontSize: 14),)),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RatingBar.builder(
                        initialRating: 0,
                        minRating: 1,
                        unratedColor: Colors.grey,
                        itemCount: 5,
                        itemSize: 15.0,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                        updateOnDrag: true,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        onRatingUpdate: (ratingvalue) {
                          setState(() {
                            fullRating = ratingvalue;
                          });
                        },
                      ),
                      const Text('77 reviews', style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  const Text('14.9', style: TextStyle(fontSize: 12,color: Colors.grey),),
                  const SizedBox(width: 180),
                ],),),
              Expanded(flex:2,
                child: IconButton(
                  iconSize: 25,
                  icon:const Icon(Icons.add_shopping_cart_sharp),color: Colors.green,
                  onPressed: () {
                    Get.to (const ProductQuantity());
                  },),
              ),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(flex: 6,
              child:Image.asset(
                    'Assets/images/Spaghetti_carbonara.png',
                    width: 100,
                    height: 100,
                  ),),
            const SizedBox(width:Dimensions.spacebtwnSmallContainer),
              Expanded(flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                        width: 210,
                        child: Text('Spaghetti carbonara', style: TextStyle(fontSize: 14),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 1,
                          unratedColor: Colors.grey,
                          itemCount: 5,
                          itemSize: 15.0,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                          updateOnDrag: true,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          onRatingUpdate: (ratingvalue) {
                            setState(() {
                              fullRating = ratingvalue;
                            });
                          },
                        ),
                        const Text('120 reviews', style: TextStyle(fontSize: 12),),
                      ],
                    ),
                     const Text('13.5', style: TextStyle(fontSize: 12,color: Colors.grey),),
                      ],),),
              Expanded(flex: 2,
                child: IconButton(
                  iconSize: 25,
                  icon:const Icon(Icons.add_shopping_cart_sharp),color: Colors.green,
                  onPressed: () {
                    Get.to (const ProductQuantity());
                  },),
                   ),
                  ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded( flex: 6,
              child: Image.asset(
                'Assets/images/Fagottoni_di_ricotta.png',
                width: 100,
                height: 100,
              ),
            ),
             const SizedBox(width:Dimensions.spacebtwnSmallContainer),

            Expanded(flex:10,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 200,child: Text('Fagottoni di ricotta e pear (sachets stuffed and pear with cheese sauce and walnuts)', style: TextStyle(fontSize: 14),)),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 1,
                          unratedColor: Colors.grey,
                          itemCount: 5,
                          itemSize: 15.0,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                          updateOnDrag: true,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          onRatingUpdate: (ratingvalue) {
                            setState(() {
                              fullRating = ratingvalue;
                            });
                          },
                        ),
                        const Text('120 reviews', style: TextStyle(fontSize: 12),),
                      ],
                    ),
                     const Text('14.9', style: TextStyle(fontSize: 12,color: Colors.grey),),
                  ],),
            ),
            Expanded(flex: 2,
              child: IconButton(
                iconSize: 25,
                icon:const Icon(Icons.add_shopping_cart_sharp),color: Colors.green,
                onPressed: () {
                  Get.to (const ProductQuantity());
                },),
            ),
          ],),
      ],
    );
  }
}
