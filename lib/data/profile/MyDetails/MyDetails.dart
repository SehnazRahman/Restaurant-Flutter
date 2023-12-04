import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/data/profile/MyDetails/EditName.dart';

class MyDetails extends StatelessWidget {
  const MyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      elevation: 0,
        backgroundColor: Colors.green,
        title: const Text('My Details'),
    ),
      body:Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Your name',style: TextStyle(fontSize: Dimensions.textSizeDefault),),
            const SizedBox(height: Dimensions.spacebtwnSmallContainer),
            Container(
              height: Dimensions.reserveNowHeight,
              width: Dimensions.myDetailsWidth,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green,),
                borderRadius:const BorderRadius.all(Radius.circular(10),),
                  shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                        flex: 1,
                        child: Icon(Icons.person_outline,color: Colors.green,)),
                    const SizedBox(width: Dimensions.spacebtwnSmallContainer),
                    const Expanded(flex:8,
                      child: Text('davidwatson198',
                      style: TextStyle(fontSize: Dimensions.textSizeDefault,color: rColor.infoDisplayFont),),
                    ),
                    Expanded(flex:1,
                      child: TextButton(
                        onPressed: (){
                          Get.to( EditName());
                        },
                        child: const Text('Edit',
                          style: TextStyle(fontSize: Dimensions.textSizeMini,color: rColor.infoDisplayFont),),
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: Dimensions.spacebtwnContainer),
            const Text('Email',style: TextStyle(fontSize: Dimensions.textSizeDefault),),
            const SizedBox(height: Dimensions.spacebtwnSmallContainer),
            Container(
              height: Dimensions.reserveNowHeight,
              width: Dimensions.myDetailsWidth,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green,),
                borderRadius:const BorderRadius.all(Radius.circular(10),),
                shape: BoxShape.rectangle,
              ),
              child: const Padding(
                padding: EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(Icons.alternate_email_sharp,color: Colors.green,)),
                    SizedBox(width: Dimensions.spacebtwnSmallContainer),
                    Expanded(flex:8,
                      child: Text('davidwatson198@gmail.com',
                        style: TextStyle(fontSize: Dimensions.textSizeDefault,color: rColor.infoDisplayFont),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
