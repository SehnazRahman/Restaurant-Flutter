import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';

class IncomingDemo extends StatefulWidget{
   const IncomingDemo({super.key});

   @override
   State<IncomingDemo> createState() => _IncomingDemoState();
}

 class _IncomingDemoState extends State<IncomingDemo> {
   double fullRating = 0;

   @override
   Widget build(BuildContext context) {

     return SingleChildScrollView(
       child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Text ("IncomingDemo",
                   style:TextStyle(
                       fontSize: Dimensions.textSizeDefaultLarge,
                       fontWeight: Dimensions.medium) ,),
            ),
            Expanded(
                    flex: 25,
                    child: ListView(
                     shrinkWrap: true,
                        padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
                      children:[
                      ListTile(
                          leading: const SizedBox(
                                  height: Dimensions.imageBoxHeight*0.8,
                                  width: Dimensions.imageBoxWidth * 0.8,
                                  child: Image(image: AssetImage('Assets/images/burTruffle.jpg'),height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
                          ),
                          title: const Text("Burrata with truffle cream and tomato",
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
                                      const Text("Rs 14.9",
                                        style: TextStyle(
                                            fontSize: Dimensions.textSizeSearch,
                                            color: colorDecoration.infoDisplayFont),),
                                    ],
                                  ),),
                          trailing: const Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                 ),
                      ListTile(
                        leading: const SizedBox(
                        height: Dimensions.imageBoxHeight*0.8,
                        width: Dimensions.imageBoxWidth * 0.8,
                         child: Image(image: AssetImage('Assets/images/Bakedaubergine.jpg'),height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
                    ),
                        title: const Text("Baked aubergine mille-feuille with mozzarella and parmesan",
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
                              const Text("Rs 12.5",
                          style: TextStyle(
                              fontSize: Dimensions.textSizeSearch,
                              color: colorDecoration.infoDisplayFont),),
                      ],
                    ),),
                           trailing: const Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                    ),
                      ListTile(
                        leading: const SizedBox(
                          height: Dimensions.imageBoxHeight*0.8,
                          width: Dimensions.imageBoxWidth * 0.8,
                          child: Image(image: AssetImage('Assets/images/Octopustomato.jpg'),height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
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
                              const Text("Rs 15.9",
                                style: TextStyle(
                                    fontSize: Dimensions.textSizeSearch,
                                    color: colorDecoration.infoDisplayFont),),
                            ],
                          ),),
                        trailing: const Icon(Icons.add_shopping_cart_sharp,color: Colors.green,),
                      ),

          ])),

                ]),
     );
   }
 }