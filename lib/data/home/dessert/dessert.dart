import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:restaurant/const/styling.dart';

class Dessert extends StatefulWidget {
  const Dessert ({super.key});

  @override
  State<Dessert> createState() => _DessertState();
}

class _DessertState extends State<Dessert> {
  double fullRating = 0;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
          child: Text('Dessert', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(flex:6,
              child: Image.asset(
                'Assets/images/Chiacchiere_di_Nutella.png',
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(width:Dimensions.spacebtwnSmallContainer),
            Expanded( flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const SizedBox(width: 200,child: Text('Chiacchiere di Nutella', style: TextStyle(fontSize: 14),)),
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
                      const Text('60 Reviews', style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  const Text('6.5', style: TextStyle(fontSize: 12,color: Colors.grey),),
                  const SizedBox(width: 180),
                ],),),
            Expanded(flex:2,
              child: IconButton(
                iconSize: 25,
                icon:const Icon(Icons.add_shopping_cart_sharp),color: Colors.green,
                onPressed: () {
                },),
            ),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(flex: 6,
              child:Image.asset(
                'Assets/images/Tiramisu.png',
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
                      child: Text('Tiramisu', style: TextStyle(fontSize: 14),)),
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
                      const Text('55 Reviews', style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  const Text('5', style: TextStyle(fontSize: 12,color: Colors.grey),),
                ],),),
            Expanded(flex: 2,
              child: IconButton(
                iconSize: 25,
                icon:const Icon(Icons.add_shopping_cart_sharp),color: Colors.green,
                onPressed: () {
                },),
            ),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded( flex: 6,
              child: Image.asset(
                'Assets/images/Sicilian_cannoli.png',
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(width:Dimensions.spacebtwnSmallContainer),

            Expanded(flex:10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 200,child: Text('Sicilian cannoli', style: TextStyle(fontSize: 14),)),
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
                      const Text('87 Reviews', style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  const Text('5', style: TextStyle(fontSize: 12,color: Colors.grey),),
                ],),
            ),
            Expanded(flex: 2,
              child: IconButton(
                iconSize: 25,
                icon:const Icon(Icons.add_shopping_cart_sharp),color: Colors.green,
                onPressed: () {
                },),
            ),
          ],),
      ],
    );
  }
}
