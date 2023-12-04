import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/const/color.dart';
import 'myCart.dart';

class ProductQuantity extends StatefulWidget {
  const ProductQuantity({super.key});

  @override
  State<ProductQuantity> createState() => _ProductQuantityState();
}

class _ProductQuantityState extends State<ProductQuantity> {
  int num = 2;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
     body: Column(
       children: [

         SizedBox(
           height: 264,
             width: MediaQuery.of(context).size.width,
             child: Image.asset('Assets/images/Fagottoni_di_ricotta.png', fit: BoxFit.cover,)),

         Padding(
           padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
           child: Column(
             children: [
               const SizedBox(height: Dimensions.spacebtwnContainer),

           const Text('Fagottoni di ricotta e pear (sachets stuffed and pear with cheese sauce and walnuts)',
           style: TextStyle(fontSize: Dimensions.textSizeMedium)),
           const SizedBox(height: Dimensions.spacebtwnContainer),
           const Text('Quantity',
           style: TextStyle(fontWeight: Dimensions.medium,fontSize: Dimensions.textSizeSemiLarge),),
           const SizedBox(height: Dimensions.spacebtwnContainer),
           Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Container(
                 height: Dimensions.squareHeight,
                 width: Dimensions.squareWidth,
                 color: Colors.green,
                 child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.grey,
                     ),
                     onPressed: (){},
                     child: Center(
                       child: const Text('-',
                         style: TextStyle(fontSize: Dimensions.textSizeExtraLarge),),
                     )),
               ),
               const SizedBox(width: Dimensions.spacebtwnItem),
                Center(
                 child: Text( '$num',
                   style: TextStyle(fontSize: Dimensions.textSizeSemiLarge),),
               ),
                const SizedBox(width: Dimensions.spacebtwnItem),
                 Container(
                  height: Dimensions.squareHeight,
                  width: Dimensions.squareWidth,
                  color: Colors.green,
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.green,
                     ),
                       onPressed: (){},
                       child: Center(
                         child: const Text('+',
                         style: TextStyle(fontSize: Dimensions.textSizeExtraLarge),),
                       )),
                 ),
             ],),
           ),
           const SizedBox(height: Dimensions.spacebtwnContainer),
           Container(
               height: Dimensions.containerHeight,
               width: Dimensions.containerWidth,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: rColor.greenContainer),
               child:ElevatedButton(
                 onPressed: (){
                   Get.to(const MyCart());
                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.green,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                   textStyle: const TextStyle(
                       fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                 ), child: const Text('Add to cart'),)
           ),
             ],
           ),
         ),
       ],
     ),
    );
  }
}
