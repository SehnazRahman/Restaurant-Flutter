import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/styling.dart';

class Incoming extends StatelessWidget{
  const Incoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
     Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(
           height: 50,
           child: IconButton(icon:const Icon(Icons.arrow_back), onPressed: () {
             Get.back();
           },),
         ),
         const Text ("Incoming",
              style:TextStyle(
                  fontSize: Dimensions.textSizeDefaultLarge,
                  fontWeight: Dimensions.medium) ,),
         const ListTile(
           leading: SizedBox(
             height: Dimensions.imageBoxHeight*0.8,
             width: Dimensions.imageBoxWidth * 0.8,
             child: Image(image: AssetImage('Assets/images/burTruffle.jpg'),height: Dimensions.imageBoxHeight,width: Dimensions.imageBoxWidth,),
           ),
           title: Text("Burrata with truffle cream and tomato"),
         )
       ],
     )
    );
  }

}