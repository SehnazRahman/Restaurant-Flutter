import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TheForkPage extends StatefulWidget {
  const TheForkPage({super.key});

  @override
  State<TheForkPage> createState() => _TheForkPageState();
}

class _TheForkPageState extends State<TheForkPage> {
  double fullRating =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Opiniones',style: TextStyle(fontSize: Dimensions.textSizeSemiLarge, fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Expanded( flex: 5,
                child: Column(
                    children: [
                     SingleChildScrollView(
                       child: ListTile(
                            leading: CircularPercentIndicator(
                            radius: 30.0,
                            lineWidth: 3.0,
                            percent: 0.96,
                            center: const Text('9.6/10', style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.Bold),),
                            backgroundColor: Colors.grey,
                            progressColor: Colors.green,
                              addAutomaticKeepAlive:true ,
                              circularStrokeCap: CircularStrokeCap.round,

                          ),
                            title: const Text('Sobresaliente',style: TextStyle(fontSize: Dimensions.textSizeSmall),),
                            subtitle: const Text('829 Opiniones',style: TextStyle(fontSize: Dimensions.textSizeExtraSmall, color: colorDecoration.infoDisplayFont),),
                           ),
                     ),
                      const SizedBox(height: Dimensions.spacebtwnSmallContainer),
                      const Row(
                        children: [
                          Column(
                            children: [
                              Text('9.7/10',style: TextStyle(fontSize: Dimensions.textSizeSmall),),
                              Text('Comida',style: TextStyle(fontSize: Dimensions.textSizeExtraSmall, color: colorDecoration.infoDisplayFont),),
                            ],
                          ),
                          const SizedBox(width: Dimensions.spacebtwnSmallContainer),
                          Column(
                            children: [
                              Text('9.8/10',style: TextStyle(fontSize: Dimensions.textSizeSmall),),
                              Text('Servico',style: TextStyle(fontSize: Dimensions.textSizeExtraSmall, color: colorDecoration.infoDisplayFont),),
                            ],
                          ),
                          const SizedBox(width: Dimensions.spacebtwnSmallContainer),
                          Column(
                            children: [
                              Text('9.1/10',style: TextStyle(fontSize: Dimensions.textSizeSmall),),
                              Text('Ambiente',style: TextStyle(fontSize: Dimensions.textSizeExtraSmall, color: colorDecoration.infoDisplayFont),),
                            ],
                          ),
                        ],
                      ),
                    ])
                      ),
                  Expanded( flex : 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Expanded(
                                flex: 2,
                                child: Text('9-10',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
                            Expanded(flex: 8,
                              child: SizedBox(
                                width: Dimensions.ItemTabWidth,
                                child: LinearProgressIndicator(
                                  value: 0.96,
                                  valueColor:const AlwaysStoppedAnimation(colorDecoration.greenContainer),
                                  backgroundColor: colorDecoration.selectedBorder,
                                  borderRadius: BorderRadius.circular(5),
                                  minHeight: 5,
                                ),
                              )
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Expanded(
                                flex: 2,
                                child: Text('7-8',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
                            Expanded(flex: 8,
                                child: SizedBox(
                                  width: Dimensions.ItemTabWidth,
                                  child: LinearProgressIndicator(
                                    value: 0.5,
                                    valueColor:const AlwaysStoppedAnimation(colorDecoration.greenContainer),
                                    backgroundColor: colorDecoration.selectedBorder,
                                    borderRadius: BorderRadius.circular(5),
                                    minHeight: 5,
                                  ),
                                )
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Expanded(
                                flex: 2,
                                child: Text('5-6',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
                            Expanded(flex: 8,
                                child: SizedBox(
                                  width: Dimensions.ItemTabWidth,
                                  child: LinearProgressIndicator(
                                    value: 0.2,
                                    valueColor:const AlwaysStoppedAnimation(colorDecoration.greenContainer),
                                    backgroundColor: colorDecoration.selectedBorder,
                                    borderRadius: BorderRadius.circular(5),
                                    minHeight: 5,
                                  ),
                                )
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Expanded(
                                flex: 2,
                                child: Text('3-4',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
                            Expanded(flex: 8,
                                child: SizedBox(
                                  width: Dimensions.ItemTabWidth,
                                  child: LinearProgressIndicator(
                                    value: 0.1,
                                    valueColor:const AlwaysStoppedAnimation(colorDecoration.greenContainer),
                                    backgroundColor: colorDecoration.selectedBorder,
                                    borderRadius: BorderRadius.circular(5),
                                    minHeight: 5,
                                  ),
                                )
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Expanded(
                                flex: 2,
                                child: Text('1-2',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
                            Expanded(flex: 8,
                                child: SizedBox(
                                  width: Dimensions.ItemTabWidth,
                                  child: LinearProgressIndicator(
                                    value: 0.1,
                                    valueColor:const AlwaysStoppedAnimation(colorDecoration.greenContainer),
                                    backgroundColor: colorDecoration.selectedBorder,
                                    borderRadius: BorderRadius.circular(5),
                                    minHeight: 5,
                                  ),
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],),
              const SizedBox(height: Dimensions.spacebtwnContainer),
              const Divider(thickness: 2),
              const Text('What customers have said about this restaurant',
                style: TextStyle(
                    fontSize:Dimensions.textSizeSearch,
                    fontWeight: Dimensions.medium ),),
                const SizedBox(
                  height: Dimensions.spacebtwnContainer
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: Dimensions.customerReviewHeight,
                        width: Dimensions.customerReviewWidth,
                        decoration: BoxDecoration(
                          boxShadow: [const BoxShadow(color: Colors.grey,spreadRadius: 1, blurRadius: 2,blurStyle: BlurStyle.outer)],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:ElevatedButton(
                          onPressed: (){
                            Get.to(const ());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            textStyle: const TextStyle(
                                fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                          ), child: const Text('Great value for the price',
                              style: TextStyle(
                                  fontSize: Dimensions.textSizeExtraSmall, color: Colors.black))),
                    ),
                    Container(
                      height: Dimensions.customerReviewHeight,
                      width: Dimensions.customerReviewWidth,
                      decoration: BoxDecoration(
                        boxShadow: [const BoxShadow(color: Colors.grey,spreadRadius: 1, blurRadius: 2,blurStyle: BlurStyle.outer)],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:ElevatedButton(
                          onPressed: (){
                            Get.to(const ());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            textStyle: const TextStyle(
                                fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                          ), child: const Text('Little waiting time',
                          style: TextStyle(
                              fontSize: Dimensions.textSizeExtraSmall, color: Colors.black))),
                    ),
                    Container(
                      height: Dimensions.customerReviewHeight,
                      width: Dimensions.customerReviewWidth,
                      decoration: BoxDecoration(
                        boxShadow: [const BoxShadow(color: Colors.grey,spreadRadius: 1, blurRadius: 2,blurStyle: BlurStyle.outer)],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:ElevatedButton(
                          onPressed: (){
                            Get.to(const ());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            textStyle: const TextStyle(
                                fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                          ), child: const Text('Very calm',
                          style: TextStyle(
                              fontSize: Dimensions.textSizeExtraSmall, color: Colors.black))),
                    ),
                    const SizedBox(
                        height: Dimensions.spacebtwnContainer
                    ),
                  ],
                ),
              const SizedBox(height: Dimensions.spacebtwnContainer),
              Row(
                children: [
                 Image.asset('Assets/images/fork.png',color: colorDecoration.greenContainer, height: 40,width: 40,),
                 const SizedBox(width: Dimensions.spacebtwnSmallContainer),
                 const Expanded(
                   child: Text('Only users who have booked on the platforms or on a calendar'
                       ' of reservations and have consumed in this restaurant can leave a rating, '
                       'with or without opinion.', style: TextStyle(fontSize: Dimensions.textSizeSmall)),
                 )
                ],
              ),
              const SizedBox(height: Dimensions.spacebtwnContainer),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Container(
                height: Dimensions.dropdownHeight,
                width:Dimensions.dropdownWidth ,
                decoration: BoxDecoration(
                  border: Border.all(color: colorDecoration.greenContainer)
                     ),
                child: const Center(child: Text('Newest', style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: colorDecoration.fontOverWhite),)),),
                Container(
                    height: Dimensions.dropdownHeight,
                    width:Dimensions.dropdownWidth ,
                    decoration: BoxDecoration(
                        border: Border.all(color: colorDecoration.greenContainer)
                    ),
                    child: const Center(child: Text('Only opnions with comments ', style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: colorDecoration.fontOverWhite),)),),
                Container(
                    height: Dimensions.dropdownHeight,
                    width:Dimensions.dropdownWidth ,
                    decoration: BoxDecoration(
                        border: Border.all(color: colorDecoration.greenContainer)
                    ),
                    child: const Center(child: Text('Only opnions in Spanish', style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: colorDecoration.fontOverWhite),)),),
                Container(
                    height: Dimensions.dropdownHeight,
                    width:Dimensions.dropdownWidth,
                    decoration: BoxDecoration(
                        border: Border.all(color: colorDecoration.greenContainer)
                    ),
                    child: const Center(child: Text('Chance', style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: colorDecoration.fontOverWhite),)),),
                ],
              ),
              const SizedBox(height: Dimensions.spacebtwnContainer),
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
                children: [
                  ListTile(
                    leading: SizedBox(
                      height: Dimensions.squareimgDimension,
                      width:Dimensions.squareimgDimension,
                      child: Align(alignment: Alignment.centerLeft,child: Image.asset('Assets/images/girlimage.png')),
                    ),
                    title: const Text('Alexander P',style: TextStyle(fontSize: Dimensions.textSizeSmall),),
                    subtitle: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: Dimensions.spacebtwnSmallContainer),
                              const Text("April 2, 2022 • 28 reviews", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: Colors.grey),),
                              RatingBar.builder(
                                initialRating: 0,
                                minRating: 1,
                                unratedColor: Colors.grey,
                                itemCount: 5,
                                itemSize: 15.0,
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
                            ],
                          ),
                        ],
                      ),),
                    trailing: const Text('10/10',style: TextStyle(fontSize: Dimensions.textSizeSmall,color: colorDecoration.fontOverWhite),),
                  ),
                  const SizedBox(height: Dimensions.spacebtwnSmallContainer),
                  const Text('“When you find a place like this you have to come back many more times: It isa family restaurant, where from the moment you enter you notice the desirethey have that you are comfortable. then i ate it',
                  style: TextStyle(fontSize: Dimensions.textSizeSmall),),
                  SizedBox(height: Dimensions.spacebtwnSmallContainer),
                  Divider(thickness: 1),
                  ListTile(
                    leading: SizedBox(
                      height: Dimensions.squareimgDimension,
                      width:Dimensions.squareimgDimension,
                      child: Align(alignment: Alignment.centerLeft,child: Image.asset('Assets/images/shell_g.png')),
                    ),
                    title: const Text('shell g.',style: TextStyle(fontSize: Dimensions.textSizeSmall),),
                    subtitle: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: Dimensions.spacebtwnSmallContainer),
                              const Text("February 26, 2022 • 7 reviews", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: Colors.grey),),
                              RatingBar.builder(
                                initialRating: 0,
                                minRating: 1,
                                unratedColor: Colors.grey,
                                itemCount: 5,
                                itemSize: 15.0,
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
                            ],
                          ),
                        ],
                      ),),
                    trailing: const Text('9/10',style: TextStyle(fontSize: Dimensions.textSizeSmall,color: colorDecoration.fontOverWhite),),
                  ),
                  const SizedBox(height: Dimensions.spacebtwnSmallContainer),
                  const Text('“The delicious food. Very good risottos and fantastic pasta. Very rich desserts”',
                    style: TextStyle(fontSize: Dimensions.textSizeSmall),),
                  SizedBox(height: Dimensions.spacebtwnSmallContainer),
                  Divider(thickness: 1),
                  ListTile(
                    leading: SizedBox(
                      height: Dimensions.squareimgDimension,
                      width:Dimensions.squareimgDimension,
                      child: Align(alignment: Alignment.centerLeft,child: Image.asset('Assets/images/rachel_M.png')),
                    ),
                    title: const Text('Rachel_M',style: TextStyle(fontSize: Dimensions.textSizeSmall),),
                    subtitle: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: Dimensions.spacebtwnSmallContainer),
                              const Text("January 29, 2022 • 7 opinions", style: TextStyle(fontSize: Dimensions.textSizeExtraSmall,color: Colors.grey),),
                              RatingBar.builder(
                                initialRating: 0,
                                minRating: 1,
                                unratedColor: Colors.grey,
                                itemCount: 5,
                                itemSize: 15.0,
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
                            ],
                          ),
                        ],
                      ),),
                    trailing: const Text('8.5/10',style: TextStyle(fontSize: Dimensions.textSizeSmall,color: colorDecoration.fontOverWhite),),
                  ),
                  const SizedBox(height: Dimensions.spacebtwnSmallContainer),
                  const Text('“The food is delicious, although a bit expensive for the amount that they put(not so some dessert that was tremendous in size xD)”',
                    style: TextStyle(fontSize: Dimensions.textSizeSmall),),
                ],
              )
             ]),
        ),
      ),
    );
  }
}
