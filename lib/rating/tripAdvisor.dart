import'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/rating/optionTripadvisor.dart';

class TripAdvisor extends StatefulWidget {
  const TripAdvisor({super.key});

  @override
  State<TripAdvisor> createState() => _TripAdvisorState();
}

class _TripAdvisorState extends State<TripAdvisor> {

  double fullRating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Tripadvisor Reviews ',style: TextStyle(fontSize: Dimensions.textSizeSemiLarge,fontWeight: Dimensions.medium)),
            Row(
              children: [
                Expanded(flex:3,
                    child: Image.asset('Assets/images/owl.png', height: 34,width: 50)),
                const SizedBox(width: Dimensions.spacebtwnSmallContainer),
                Expanded(flex:8,
                  child: RatingBar.builder(
                    initialRating: 0,
                    minRating: 1,
                    unratedColor: Colors.grey,
                    itemCount: 5,
                    itemSize: 20.0,
                    updateOnDrag: true,
                    itemBuilder:(context, index) => const Icon(
                        Icons.circle,
                        color: Colors.tealAccent,
                      ),
                    onRatingUpdate: (ratingvalue) {
                      setState(() {
                        fullRating = ratingvalue;
                      });
                    },
                  ),
                ),
                const Expanded(flex:6,child: Text('90 tripadvisor reviews',style: TextStyle(fontSize: Dimensions.textSizeSmall))),
              ],
            ),
          const SizedBox(height: Dimensions.spacebtwnItem),
          Container(
            height: Dimensions.reserveNowHeight,
            width: Dimensions.myDetailsWidth,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green,),
              borderRadius:const BorderRadius.all(Radius.circular(10),),
              shape: BoxShape.rectangle,
            ),
            child:  Padding(
              padding: const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('See options on tripadvisor',
                    style: TextStyle(fontSize: Dimensions.textSizeDefault,color: colorDecoration.fontOverWhite),),
                  const SizedBox(width: Dimensions.spacebtwnContainer),
                  GestureDetector(
                      child: const Icon(Icons.arrow_drop_down,color: colorDecoration.infoDisplayFont),
                    onTap: (){
                    Get. to (const OptionTripAdvisor());}),
                ],
              ),
            ),
          ),
              ]
        ),
      )
    );
  }
}
