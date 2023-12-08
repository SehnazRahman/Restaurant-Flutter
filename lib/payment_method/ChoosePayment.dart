import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/data/home/MyHome/home.dart';


class ChoosePayment extends StatefulWidget {
  const ChoosePayment({super.key});

  @override
  State<ChoosePayment> createState() => _ChoosePaymentState();
}

class _ChoosePaymentState extends State<ChoosePayment> {

  int payby = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text('Choose Payment Method'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                RadioListTile(

                    title: Image.asset('Assets/images/AmericanExpress.png', height: 100,width: 100,alignment: Alignment.centerLeft),
                    controlAffinity: ListTileControlAffinity.trailing,
                    activeColor: Colors.green,
                    value: 1,
                    groupValue: payby,
                    onChanged: (value){
                    setState(() {
                      payby = value!;
                    });
                    }
                ),
                RadioListTile(
                    title: Image.asset('Assets/images/MasterCard.png',height: 100,width: 100,alignment: Alignment.centerLeft),
                    controlAffinity: ListTileControlAffinity.trailing,
                    activeColor: Colors.green,
                    value: 2,
                    groupValue: payby,
                    onChanged: (value){
                      setState(() {
                        payby = value!;
                      });
                    }
                ),
                RadioListTile(
                    title: Image.asset('Assets/images/Visa.png',height: 100,width: 100,alignment: Alignment.centerLeft),
                    controlAffinity: ListTileControlAffinity.trailing,
                    activeColor: Colors.green,
                    value: 3,
                    groupValue: payby,
                    onChanged: (value){
                      setState(() {
                        payby = value!;
                      });
                    }
                ),
              ],
            ),
            SizedBox(height: Dimensions.spacebtwnContainer),
            Container(
                height: Dimensions.containerHeight,
                width: Dimensions.containerWidth,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                    ),
                child:ElevatedButton(
                  onPressed: (){
                    Get.to(const ());
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    textStyle: const TextStyle(
                        fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                  ), child: const Text('Add Payment Method',style: TextStyle(fontSize: Dimensions.textSizeSearch,fontWeight: Dimensions.medium,color: Colors.green),),)
            ),
            SizedBox(height: Dimensions.spacebtwnContainer),
            Divider(thickness: 1),
            SizedBox(height: Dimensions.spacebtwnContainer),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Text('Total', style: TextStyle(fontSize: Dimensions.textSizeDefaultLarge,fontWeight: Dimensions.medium),),
                Text('Rs 23 ', style: TextStyle(fontSize: Dimensions.textSizeMedium,color: colorDecoration.infoDisplayFont),),
              ],
            ),
            SizedBox(height: Dimensions.spacebtwnContainer),
            Container(
                height: Dimensions.containerHeight,
                width: Dimensions.containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child:ElevatedButton(
                  onPressed: (){
                    Get.to(const Home());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    textStyle: const TextStyle(
                        fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                  ), child: const Text('Buy Now',style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.semiBold,color: Colors.white),),)
            ),
          ],
        ),
      ),
    );
  }
}
