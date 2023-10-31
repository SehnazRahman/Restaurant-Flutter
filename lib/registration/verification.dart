import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/location/Location.dart';
import '../const/styling.dart';
import '../Authorization/controller/authController.dart';
import 'package:restaurant/const/color.dart';

class Verification extends StatefulWidget{
  const Verification({super.key});

  @override
  State<StatefulWidget> createState() => _VerificationPage();
}

class _VerificationPage extends State<Verification>{
  AuthController authCtrl = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
        SizedBox(
        height: 50,
        child: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
           Get.back();
            },),
            ),
    Padding(
     padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
     child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text("Register",
          style: TextStyle(fontSize: Dimensions.textSizeExtraLarge, fontWeight: FontWeight.bold, color: rColor.fontOverWhite,)),
          const SizedBox(
         height: 10,
          ),
        const Text("We have sent an email to your email account with  a verification code!",style: TextStyle(fontSize: Dimensions.textSizeDefault,),),
            const SizedBox(
              height: Dimensions.spacebtwnItem
            ),
            const Text("Verification Code:", style: TextStyle(fontSize: Dimensions.textSizeDefault,color: rColor.fontDefault),),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Ex:12345",
                focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                BorderSide(color: rColor.greenContainer,width:2)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                const BorderSide(color: rColor.greenContainer,width: 2)),
              ),
            ),
            const SizedBox(
              height: Dimensions.spacebtwnContainer ,
            ),
            Container(
                height: Dimensions.containerHeight,
                width: Dimensions.containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),),
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(const Location());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    textStyle: const TextStyle(
                        color: Colors.white, fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                  ), child: const Text('Register'),
                )),
    ]),
    )]),
    );
  }
}