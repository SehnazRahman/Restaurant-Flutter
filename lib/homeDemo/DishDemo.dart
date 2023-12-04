/* import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/data/cart/productQuantity.dart';*/

/* class Dish extends StatefulWidget{
  const Dish({super.key});

  @override
  State<Dish> createState() => _Dish();
}*/

/* class _Dish extends State<Dish> {
  double fullRating = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () { Get.back(); },
            icon: const Icon(Icons.arrow_back_sharp,color: Colors.black)),
        elevation: 0,
      ),
      body:
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Text ("     Dish",
                style:TextStyle(
                    fontSize: Dimensions.textSizeDefaultLarge,
                    fontWeight: Dimensions.medium) ,),
            ),
            Expanded(
                flex: 25,
                child: ListView(
                    padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
                    children:[
                      ListTile(
                        leading: const SizedBox(
                          height: Dimensions.imageBoxHeight*0.8,
                          width: Dimensions.imageBoxWidth * 0.8,
                          child: Image(image: AssetImage('Assets/images/SpaghettialCartoccio.jpg'),height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
                        ),
                        title: const Text("Sapaghetti al cartoccio (with seafood, garlic, parsley and finished in the oven)",
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
                                  const Text("20 Reviews", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: Colors.grey),)
                                ],
                              ),
                              const Text("Rs 14.9",
                                style: TextStyle(
                                    fontSize: Dimensions.textSizeSearch,
                                    color: rColor.infoDisplayFont),),
                            ],
                          ),),
                        trailing: const Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                      ),
                      ListTile(
                        leading: const SizedBox(
                          height: Dimensions.imageBoxHeight*0.8,
                          width: Dimensions.imageBoxWidth * 0.8,
                          child: Image(image: AssetImage('Assets/images/Spaghetticarbonara.jpg'),height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
                        ),
                        title: const Text("Spaghetti carbonara",
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
                                  const Text("15 Reviews", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: Colors.grey),)
                                ],
                              ),
                              const Text("Rs 13.5",
                                style: TextStyle(
                                    fontSize: Dimensions.textSizeSearch,
                                    color: rColor.infoDisplayFont),),
                            ],
                          ),),
                        trailing: const Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                      ),
                      ListTile(
                        leading:  const SizedBox(
                          height: Dimensions.imageBoxHeight*0.8,
                          width: Dimensions.imageBoxWidth * 0.8,
                          child: Image(image: AssetImage('Assets/images/Fagottonidiricotta.jpg'),height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
                        ),
                        title:  const Text("Fagottoni di ricotta e pear (sachets stuffed and pear with cheese sauce and walnuts)",
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
                                  const Text("15 Reviews", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: Colors.grey),)
                                ],
                              ),
                              const Text("Rs 14.9",
                                style: TextStyle(
                                    fontSize: Dimensions.textSizeSearch,
                                    color: rColor.infoDisplayFont),),
                            ],
                          ),),
                        trailing: IconButton(onPressed: () { Get.to (const ProductQuantity()); },
                          icon:const Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                        ),)

                    ])),
          ]),
    );
  }
}*/