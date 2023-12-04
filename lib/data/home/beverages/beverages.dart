import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:restaurant/const/styling.dart';

class Beverages extends StatefulWidget {
  const Beverages ({super.key});

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    double fullRating = 0;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
              child: Text('Beverages', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'Assets/images/Coffee.png',
                  width: 100,
                  height: 100,
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(width: 200,child: const Text('Coffee', style: TextStyle(fontSize: 14),)),
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
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('2.0', style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(width: 210),
                          Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                        ],)
                    ],),
                )
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'Assets/images/HalfBottleofwater.png',
                  width: 100,
                  height: 100,
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 200,
                          child: const Text('Half Bottle of water', style: TextStyle(fontSize: 14),)),
                      const SizedBox(height: 5,),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('2.5', style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(width: 210,),
                          Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                        ],)
                    ],),
                )
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'Assets/images/Bottleofwine.png',
                  width: 100,
                  height: 100,
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 200,child: const Text('Bottle of wine', style: TextStyle(fontSize: 14),)),
                      const SizedBox(height: 5,),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('12.0', style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(width: 200,),
                          Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                        ],)
                    ],),
                )
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'Assets/images/Glassofwine.png',
                  width: 100,
                  height: 100,
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 200,child: const Text('Glass of wine', style: TextStyle(fontSize: 14),)),
                      const SizedBox(height: 5,),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('3.0', style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(width: 210,),
                          Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                        ],)
                    ],),
                )
              ],),
          ],
        ),
      ),
    );
  }
}
