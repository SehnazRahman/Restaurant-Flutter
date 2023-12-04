/*import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';*/

/*class Beverages extends StatefulWidget{
  const Beverages({super.key});*/

/*  @override
  State<Beverages> createState() => _Beverages();
}

class _Beverages extends State<Beverages> {
  double fullRating = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () { Get.back(); },
            icon: Icon(Icons.arrow_back_sharp,color: Colors.black)),
        elevation: 0,
      ),
      body:
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: const Text ("     Beverages",
                style:TextStyle(
                    fontSize: Dimensions.textSizeDefaultLarge,
                    fontWeight: Dimensions.medium) ,),
            ),
            Expanded(
                flex: 25,
                child: ListView(
                    padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                    children:[
                      ListTile(
                        leading: const SizedBox(
                          height: Dimensions.imageBoxHeight*0.8,
                          width: Dimensions.imageBoxWidth * 0.8,
                          child: Image(image: AssetImage('Assets/images/Coffee.jpg'),height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
                        ),
                        title: const Text("Coffee",
                          style: TextStyle(fontSize: Dimensions.textSizeSearch),),
                        subtitle: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                  const SizedBox(width: Dimensions.spacebtwnSmallContainer),
                                  const Text("77 Reviews", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: Colors.grey),)
                                ],
                              ),
                              Text("Rs 14.9",
                                style: TextStyle(
                                    fontSize: Dimensions.textSizeSearch,
                                    color: rColor.infoDisplayFont),),
                            ],
                          ),),
                        trailing: Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                      ),
                      ListTile(
                        leading: const SizedBox(
                          height: Dimensions.imageBoxHeight*0.8,
                          width: Dimensions.imageBoxWidth * 0.8,
                          child: Image(image: AssetImage('Assets/images/HalfBottleofwater.jpg'),height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
                        ),
                        title: const Text("Half Bottle of water",
                          style: TextStyle(fontSize: Dimensions.textSizeSearch),),
                        subtitle: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                  const SizedBox(width: Dimensions.spacebtwnSmallContainer),
                                  const Text("120 Reviews", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: Colors.grey),)
                                ],
                              ),
                              Text("Rs 12.5",
                                style: TextStyle(
                                    fontSize: Dimensions.textSizeSearch,
                                    color: rColor.infoDisplayFont),),
                            ],
                          ),),
                        trailing: Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                      ),
                      ListTile(
                        leading: const SizedBox(
                          height: Dimensions.imageBoxHeight*0.8,
                          width: Dimensions.imageBoxWidth * 0.8,
                          child: Image(image: AssetImage('Assets/images/Bottleofwine.jpg'),height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
                        ),
                        title: const Text("Octopus carpaccio with lemon, arugula and tomato cherry",
                          style: TextStyle(fontSize: Dimensions.textSizeSearch),),
                        subtitle: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                  const SizedBox(width: Dimensions.spacebtwnSmallContainer),
                                  const Text("120 Reviews", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: Colors.grey),)
                                ],
                              ),
                              Text("Rs 15.9",
                                style: TextStyle(
                                    fontSize: Dimensions.textSizeSearch,
                                    color: rColor.infoDisplayFont),),
                            ],
                          ),),
                        trailing: Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                      ),
                      ListTile(
                        leading: const SizedBox(
                          height: Dimensions.imageBoxHeight*0.8,
                          width: Dimensions.imageBoxWidth * 0.8,
                          child: Image(image: AssetImage('Assets/images/Glassofwine.jpg'),height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
                        ),
                        title: const Text("Glass of wine",
                          style: TextStyle(fontSize: Dimensions.textSizeSearch),),
                        subtitle: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                  const SizedBox(width: Dimensions.spacebtwnSmallContainer),
                                  const Text("120 Reviews", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: Colors.grey),)
                                ],
                              ),
                              Text("Rs 15.9",
                                style: TextStyle(
                                    fontSize: Dimensions.textSizeSearch,
                                    color: rColor.infoDisplayFont),),
                            ],
                          ),),
                        trailing: Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                      ),

                    ])),
          ]),
    );
  }
}*/