import'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';

class OptionTripAdvisor extends StatefulWidget {
  const OptionTripAdvisor({super.key});

  @override
  State<OptionTripAdvisor> createState() => _OptionTripAdvisorState();
}

class _OptionTripAdvisorState extends State<OptionTripAdvisor> {
  double fullRating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
     Padding(
       padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Taverna pan & vino', style: TextStyle(fontSize: Dimensions.textSizeDefaultLarge),),
            const Text('Calle de Melchor Fern`andez Almagro ,62, 28029 Madrid, Espana (Previamente Ti amo)', style:  TextStyle(fontSize: Dimensions.textSizeMini),),
            const SizedBox(height: Dimensions.spacebtwnContainer),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('Assets/images/owl.png', height: 20,width: 20, colorBlendMode: BlendMode.lighten,color: Colors.black.withOpacity(1),filterQuality: FilterQuality.high,),
                RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  unratedColor: Colors.grey,
                  itemCount: 5,
                  itemSize: 20.0,
                  updateOnDrag: true,
                  itemBuilder:(context, index) => const Icon(
                    Icons.circle,
                    color: Colors.green,
                  ),
                  onRatingUpdate: (ratingvalue) {
                    setState(() {
                      fullRating = ratingvalue;
                    });
                  },
                ),
                const Text('90 tripadvisor reviews',style: TextStyle(fontSize: Dimensions.textSizeSmall)),
              ],
            ),
            const SizedBox(height: Dimensions.spacebtwnContainer),
            const Text('Puntuacion de viajeros de Tripadvisor:',style: TextStyle(fontSize: Dimensions.textSizeMedium),
            ),
            const Divider(thickness: 1),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Text(' Excelente',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
                Expanded(flex: 5,
                    child: SizedBox(
                      width: Dimensions.ItemTabWidth,
                      child: LinearProgressIndicator(
                        value: 0.39,
                        valueColor:AlwaysStoppedAnimation(rColor.greenContainer),
                        backgroundColor: rColor.selectedBorder,
                        minHeight: 10,
                      ),
                    )
                ),
                Expanded(
                    flex: 8,
                    child: Text(' 39',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Text(' Muy bueno',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
                Expanded(flex: 5,
                    child: SizedBox(
                      width: Dimensions.ItemTabWidth,
                      child: LinearProgressIndicator(
                        value: 0.25,
                        valueColor:AlwaysStoppedAnimation(rColor.greenContainer),
                        backgroundColor: rColor.selectedBorder,
                        minHeight: 10,
                      ),
                    )
                ),
                Expanded(
                    flex: 8,
                    child: Text(' 25',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Text(' Normal',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
                Expanded(flex: 5,
                    child: SizedBox(
                      width: Dimensions.ItemTabWidth,
                      child: LinearProgressIndicator(
                        value: 0.13,
                        valueColor:AlwaysStoppedAnimation(rColor.greenContainer),
                        backgroundColor: rColor.selectedBorder,
                        minHeight: 10,
                      ),
                    )
                ),
                Expanded(
                    flex: 8,
                    child: Text(' 13',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Text(' Malo',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
                Expanded(flex: 5,
                    child: SizedBox(
                      width: Dimensions.ItemTabWidth,
                      child: LinearProgressIndicator(
                        value: 0.02,
                        valueColor:AlwaysStoppedAnimation(rColor.greenContainer),
                        backgroundColor: rColor.selectedBorder,
                        minHeight: 10,
                      ),
                    )
                ),
                Expanded(
                    flex: 8,
                    child: Text(' 2',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Text(' Pesimo',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
                Expanded(flex: 5,
                    child: SizedBox(
                      width: Dimensions.ItemTabWidth,
                      child: LinearProgressIndicator(
                        value: 0.11,
                        valueColor:AlwaysStoppedAnimation(rColor.greenContainer),
                        backgroundColor: rColor.selectedBorder,
                        minHeight: 10,
                      ),
                    )
                ),
                Expanded(
                    flex: 8,
                    child: Text(' 11',style: TextStyle(fontSize: Dimensions.textSizeSearch),)),
              ],
            ),
            const Divider(thickness: 1),
            const Text('Opiniones recientes:', style: TextStyle(fontSize: Dimensions.textSizeDefaultLarge),),
            const Divider(thickness: 1),
            const SizedBox(height: Dimensions.spacebtwnSmallContainer),
            Row(
              children:[
                Expanded(flex:2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Maravilla7', style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold),),
                    Text('Madrid , Eespana',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                    SizedBox(height: Dimensions.spacebtwnSmallContainer),
                    Text('Tipo de viaje', style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold),),
                    Text('En Familia',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                  ],
              ),
                ),
                SizedBox(width: Dimensions.spacebtwnContainer),
                Expanded(flex:5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Autentico italiano en Madrid', style: TextStyle(fontSize: Dimensions.textSizeMedium,fontWeight: Dimensions.semiBold),),
                      SizedBox(height: Dimensions.spacebtwnSmallContainer),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 0,
                            minRating: 1,
                            unratedColor: Colors.grey,
                            itemCount: 5,
                            itemSize: 15.0,
                            updateOnDrag: true,
                            itemBuilder:(context, index) => const Icon(
                              Icons.circle,
                              color: Colors.green,
                            ),
                            onRatingUpdate: (ratingvalue) {
                              setState(() {
                                fullRating = ratingvalue;
                              });
                            },
                          ),
                          const Text('30 ene 2022',style: TextStyle(fontSize: Dimensions.textSizeSmall)),
                        ],
                      ),
                      Text('La mejor comida italiana con diferencia en Madrid Todo apetecible! Probar la pizza Tuna esta riquisima y tambien las pastas Es nuetro restaurant itailiano en',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                    ],
                  ),
                ),
              ]
            ),
            Divider(thickness: 1),
            const SizedBox(height: Dimensions.spacebtwnSmallContainer),
            Row(
                children:[
                  Expanded(flex:2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Maravilla7', style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold),),
                        Text('Madrid , Eespana',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                        SizedBox(height: Dimensions.spacebtwnSmallContainer),
                        Text('Tipo de viaje', style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold),),
                        Text('En Familia',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                      ],
                    ),
                  ),
                  SizedBox(width: Dimensions.spacebtwnContainer),
                  Expanded(flex:5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Autentico italiano en Madrid', style: TextStyle(fontSize: Dimensions.textSizeMedium,fontWeight: Dimensions.semiBold),),
                        SizedBox(height: Dimensions.spacebtwnSmallContainer),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 1,
                              unratedColor: Colors.grey,
                              itemCount: 5,
                              itemSize: 15.0,
                              updateOnDrag: true,
                              itemBuilder:(context, index) => const Icon(
                                Icons.circle,
                                color: Colors.green,
                              ),
                              onRatingUpdate: (ratingvalue) {
                                setState(() {
                                  fullRating = ratingvalue;
                                });
                              },
                            ),
                            const Text('30 ene 2022',style: TextStyle(fontSize: Dimensions.textSizeSmall)),
                          ],
                        ),
                        Text('La mejor comida italiana con diferencia en Madrid Todo apetecible! Probar la pizza Tuna esta riquisima y tambien las pastas Es nuetro restaurant itailiano en',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                      ],
                    ),
                  ),
                ]
            ),
            Divider(thickness: 1),
            const SizedBox(height: Dimensions.spacebtwnSmallContainer),
            Row(
                children:[
                  Expanded(flex:2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Maravilla7', style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold),),
                        Text('Madrid , Eespana',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                        SizedBox(height: Dimensions.spacebtwnSmallContainer),
                        Text('Tipo de viaje', style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold),),
                        Text('En Familia',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                      ],
                    ),
                  ),
                  SizedBox(width: Dimensions.spacebtwnContainer),
                  Expanded(flex:5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Autentico italiano en Madrid', style: TextStyle(fontSize: Dimensions.textSizeMedium,fontWeight: Dimensions.semiBold),),
                        SizedBox(height: Dimensions.spacebtwnSmallContainer),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 1,
                              unratedColor: Colors.grey,
                              itemCount: 5,
                              itemSize: 15.0,
                              updateOnDrag: true,
                              itemBuilder:(context, index) => const Icon(
                                Icons.circle,
                                color: Colors.green,
                              ),
                              onRatingUpdate: (ratingvalue) {
                                setState(() {
                                  fullRating = ratingvalue;
                                });
                              },
                            ),
                            const Text('30 ene 2022',style: TextStyle(fontSize: Dimensions.textSizeSmall)),
                          ],
                        ),
                        Text('La mejor comida italiana con diferencia en Madrid Todo apetecible! Probar la pizza Tuna esta riquisima y tambien las pastas Es nuetro restaurant itailiano en',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                      ],
                    ),
                  ),
                ]
            ),
            Divider(thickness: 1),
            const SizedBox(height: Dimensions.spacebtwnSmallContainer),
            Row(
                children:[
                  Expanded(flex:2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Maravilla7', style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold),),
                        Text('Madrid , Eespana',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                        SizedBox(height: Dimensions.spacebtwnSmallContainer),
                        Text('Tipo de viaje', style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold),),
                        Text('En Familia',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                      ],
                    ),
                  ),
                  SizedBox(width: Dimensions.spacebtwnContainer),
                  Expanded(flex:5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Autentico italiano en Madrid', style: TextStyle(fontSize: Dimensions.textSizeMedium,fontWeight: Dimensions.semiBold),),
                        SizedBox(height: Dimensions.spacebtwnSmallContainer),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 1,
                              unratedColor: Colors.grey,
                              itemCount: 5,
                              itemSize: 15.0,
                              updateOnDrag: true,
                              itemBuilder:(context, index) => const Icon(
                                Icons.circle,
                                color: Colors.green,
                              ),
                              onRatingUpdate: (ratingvalue) {
                                setState(() {
                                  fullRating = ratingvalue;
                                });
                              },
                            ),
                            const Text('30 ene 2022',style: TextStyle(fontSize: Dimensions.textSizeSmall)),
                          ],
                        ),
                        Text('La mejor comida italiana con diferencia en Madrid Todo apetecible! Probar la pizza Tuna esta riquisima y tambien las pastas Es nuetro restaurant itailiano en',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                      ],
                    ),
                  ),
                ]
            ),
            Divider(thickness: 1),
            const SizedBox(height: Dimensions.spacebtwnSmallContainer),
            Row(
                children:[
                  Expanded(flex:2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Maravilla7', style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold),),
                        Text('Madrid , Eespana',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                        SizedBox(height: Dimensions.spacebtwnSmallContainer),
                        Text('Tipo de viaje', style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold),),
                        Text('En Familia',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                      ],
                    ),
                  ),
                  SizedBox(width: Dimensions.spacebtwnContainer),
                  Expanded(flex:5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Autentico italiano en Madrid', style: TextStyle(fontSize: Dimensions.textSizeMedium,fontWeight: Dimensions.semiBold),),
                        SizedBox(height: Dimensions.spacebtwnSmallContainer),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 1,
                              unratedColor: Colors.grey,
                              itemCount: 5,
                              itemSize: 15.0,
                              updateOnDrag: true,
                              itemBuilder:(context, index) => const Icon(
                                Icons.circle,
                                color: Colors.green,
                              ),
                              onRatingUpdate: (ratingvalue) {
                                setState(() {
                                  fullRating = ratingvalue;
                                });
                              },
                            ),
                            const Text('30 ene 2022',style: TextStyle(fontSize: Dimensions.textSizeSmall)),
                          ],
                        ),
                        Text('La mejor comida italiana con diferencia en Madrid Todo apetecible! Probar la pizza Tuna esta riquisima y tambien las pastas Es nuetro restaurant itailiano en',style: TextStyle(fontSize:Dimensions.textSizeSmall )),
                      ],
                    ),
                  ),
                ]
            ),
            Divider(thickness: 1),
            const SizedBox(height: Dimensions.spacebtwnSmallContainer),
            Text('1-5 de 90 opinions', style:  TextStyle(color: rColor.infoDisplayFont,fontSize: Dimensions.textSizeSmall)),
            SizedBox(height: Dimensions.spacebtwnItem),
            Text('Estas opiniones son las opiniones sunjetivas de viajeros individuales y no de Tripadvisor LLC ni de ninguno de sus socios comerciales', style: TextStyle(fontSize:Dimensions.textSizeSmall ),)
          ],
         ),
       ),
     )
    );
  }
}
