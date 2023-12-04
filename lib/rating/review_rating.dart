import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/rating/theForkPage.dart';
import 'package:restaurant/rating/tripAdvisor.dart';

class ReviewRating extends StatefulWidget {
  const ReviewRating({super.key});

  @override
  State<ReviewRating> createState() => _ReviewRatingState();
}

class _ReviewRatingState extends State<ReviewRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: rColor.greenContainer,
        title: const Text('Review and Options'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
          child: Column( children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to (const TheForkPage());
                  },

                  child: Container(
                    height: Dimensions.reviewOptionHeight,
                    width: Dimensions.reviewOptionWidth,
                    decoration:BoxDecoration(
                      border: Border.all(color: rColor.greenContainer)
                    ),
                      child: const Center(child: Text('thefork',style: TextStyle(fontSize: Dimensions.textSizeSmall,color:rColor.fontOverWhite),))
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to (const TripAdvisor());
                  },

                  child: Container(
                      height: Dimensions.reviewOptionHeight,
                      width: Dimensions.reviewOptionWidth,
                      decoration:BoxDecoration(
                          border: Border.all(color: rColor.greenContainer)
                      ),
                      child: const Center(child: Text('TRIPADVISOR',style: TextStyle(fontSize: Dimensions.textSizeSmall,color:rColor.fontOverWhite),))
                  ),
                ),
              ],
            ),
            Container(

            ),
            ]
          ),
        ),
      ),
    );
  }
}
