import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/data/home/MyHome/home.dart';
import '../../../const/styling.dart';

class EditName extends StatefulWidget {
  const EditName({super.key});

  @override
  State<EditName> createState() => _EditNameState();
}

class _EditNameState extends State<EditName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
        backgroundColor: Colors.green,
        title: const Text('Edit Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text("First Name", style: TextStyle(fontSize:Dimensions.textSizeDefault)),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "David",
              hintStyle: const TextStyle(color: Colors.grey,fontSize: Dimensions.textSizeDefault),
              focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
              BorderSide(color: colorDecoration.greenContainer,width:2)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
              const BorderSide(color: colorDecoration.greenContainer,width: 2)),
            ),
          ),
          const SizedBox(height: Dimensions.spacebtwnContainer),
          const Text("Last Name", style: TextStyle(fontSize:Dimensions.textSizeDefault)),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Watson",
              hintStyle: const TextStyle(color: Colors.grey,fontSize: Dimensions.textSizeDefault),
              focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
              BorderSide(color: colorDecoration.greenContainer,width:2)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
              const BorderSide(color: colorDecoration.greenContainer,width: 2)),
            ),
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
                  Get.to(const Home());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  textStyle: const TextStyle(
                      fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                ), child: const Text('Save Info'),)
          ),
    ]),
      ));
  }
}
