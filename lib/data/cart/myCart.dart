import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/data/home/MyHome/home.dart';
import '../../const/styling.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        backgroundColor: Colors.green,
      ),
     body:
     Padding(
       padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           ListView(

             shrinkWrap: true,
             children:  const [
               Card(borderOnForeground: false,
                 elevation: 5,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                 child: ListTile(
                   leading: Image(image: AssetImage('Assets/images/Fagottoni_di_ricotta.png'),fit: BoxFit.fill),
                   title:  Text("Fagottoni di ricotta e pear (sachets stuffed and pear with cheese sauce and walnuts)",
                     style: TextStyle(fontSize: Dimensions.textSizeSearch),),
                   subtitle: Text("Rs 14.9",
                     style: TextStyle(
                         fontSize: Dimensions.textSizeSearch,
                         color: colorDecoration.infoDisplayFont),),
                   ),
               ),
               Card(
                 elevation: 5,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                 child: ListTile(
                   leading: SizedBox(
                     height: Dimensions.imageBoxHeight*0.9,
                     width: Dimensions.imageBoxWidth * 0.9,
                     child: Image(image: AssetImage('Assets/images/Chiacchiere_di_Nutella.png'),fit:BoxFit.fill,height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
                   ),
                   title: Text("Chiacchiere di Nutella",
                     style: TextStyle(fontSize: Dimensions.textSizeSearch),),
                   subtitle: Text("Rs 14.9",
                           style: TextStyle(
                               fontSize: Dimensions.textSizeSearch,
                               color: colorDecoration.infoDisplayFont),),
                 ),
                 ),
               Card(
                 elevation: 5,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                 child: ListTile(
                   leading: SizedBox(
                     height: Dimensions.imageBoxHeight*0.9,
                     width: Dimensions.imageBoxWidth * 0.9,
                     child: Image(image: AssetImage('Assets/images/Tiramisu.png'),fit: BoxFit.fill,height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
                   ),
                   title: Text("Tiramisu",
                     style: TextStyle(fontSize: Dimensions.textSizeSearch),),
                   subtitle: Text("Rs 12.5",
                           style: TextStyle(
                               fontSize: Dimensions.textSizeSearch,
                               color: colorDecoration.infoDisplayFont),),
                     ),),
           ],
           ),
           SizedBox(height: Dimensions.spacebtwnItem),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Total', style: TextStyle(fontSize: Dimensions.textSizeSemiLarge, fontWeight: Dimensions.medium),),
               Text('Rs 26.4', style: TextStyle(fontSize: 22),)
             ],
           ),
           SizedBox(height: Dimensions.spacebtwnItem),
           Container(
               height: Dimensions.containerHeight,
               width: Dimensions.containerWidth,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: colorDecoration.greenContainer),
               child:ElevatedButton(
                 onPressed: (){
                   Get.to(const Home());
                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.green,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                   textStyle: const TextStyle(
                       fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                 ), child: const Text('Finalize your order'),)
           ),
         ],
       ),
     ),

    );
  }
}
