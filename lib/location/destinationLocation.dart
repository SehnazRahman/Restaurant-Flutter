import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/booking/confirm/confirm.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';

class DestinationLocation extends StatelessWidget {
  const DestinationLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Choose Location'),
      ),
     body: Column(
       children: [
         const SizedBox(height: Dimensions.spacebtwnContainer),
         SizedBox(
           height: Dimensions.destinationLocationheight ,
           width:Dimensions.destinationLocationWidth,
           child: Image.asset('Assets/images/map.png', fit: BoxFit.cover,),
         ),
          Padding(
            padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
            child: Column(
              children: [
                const Row(
                 children: [
                   Expanded(
                     flex:2,
                     child: Text("Location",style:TextStyle(
                       fontSize: Dimensions.textSizeDefaultLarge,fontWeight: Dimensions.medium
                     )),
                   ),
                   Expanded(
                     flex:3,
                     child: Text("Melchor Fernandez Almagro Street,62, 28029, Madrid, Spain",style:TextStyle(
                         fontSize: Dimensions.textSizeDefault,
                         fontWeight: Dimensions.medium,
                         color: colorDecoration.infoDisplayFont
                     )),
                   ),
                 ],
         ),
                const SizedBox(height: Dimensions.spacebtwnContainer),
                const Row(
                  children: [
                    Expanded(
                      flex:2,
                      child: Text("Transport",style:TextStyle(
                          fontSize: Dimensions.textSizeDefaultLarge,fontWeight: Dimensions.medium
                      )),
                    ),
                    Expanded(
                      flex:3,
                      child: Text("Metro Barrio del Pilar (L9) and bus 147",style:TextStyle(
                          fontSize: Dimensions.textSizeDefault,
                          fontWeight: Dimensions.medium,
                          color: colorDecoration.infoDisplayFont
                      )),
                    ),
                  ],
                ),
                const SizedBox(height: Dimensions.spacebtwnContainer),
                const Row(
                  children: [
                    Expanded(
                      flex:2,
                      child: Text("Dine In Time",style:TextStyle(
                          fontSize: Dimensions.textSizeDefaultLarge,fontWeight: Dimensions.medium
                      )),
                    ),
                    Expanded(
                      flex:3,
                      child: Text("14:30",style:TextStyle(
                          fontSize: Dimensions.textSizeDefault,
                          fontWeight: Dimensions.medium,
                          color: colorDecoration.infoDisplayFont
                      )),
                    ),
                  ],
                ),
                const SizedBox(height: Dimensions.spacebtwnContainer),
                Container(
                    height: Dimensions.containerHeight,
                    width: Dimensions.containerWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorDecoration.greenContainer),
                    child:ElevatedButton(
                      onPressed: (){
                        Get.to(const Confirm());
                      }, child: const Text('Confirm'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        textStyle: const TextStyle(
                            fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                      ),)
                ),
              ],
            ),
          )
       ],
     ),
    );
  }
}
