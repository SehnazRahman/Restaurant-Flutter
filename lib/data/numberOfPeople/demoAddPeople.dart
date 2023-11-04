import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/Authorization/widget/countofperson.dart';
import 'package:restaurant/booking/reserve/reserve.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/data/numberOfPeople/addPeople.dart';
import 'package:restaurant/const/text.dart';

class AddPeopleDemo extends StatefulWidget {
  const AddPeopleDemo({super.key});

  @override
  State<AddPeopleDemo> createState() => _AddPeopleDemoState();
}

class _AddPeopleDemoState extends State<AddPeopleDemo> {
  int index =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('Search Restaurant'),
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: Dimensions.spacebtwnContainer,),
              const Text(DefineText.searchRstntText,
                  style: TextStyle(fontSize: Dimensions.textSizeSearch,color: rColor.infoDisplayFont ),textAlign: TextAlign.center),
              const SizedBox(height: Dimensions.spacebtwnContainer,),
              Container(
                height: Dimensions.addPleoplecCntnrHeight,
                width:MediaQuery.of(context).size.width*0.85,
                decoration: BoxDecoration(
                border: Border.all(color: rColor.calenderContainer,),
                ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: Dimensions.spacebtwnContainer,),
                      Expanded(
                          flex:1,
                          child: Text("Number of people",style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.medium))),
                      Expanded(
                        flex: 15,
                        child: CountOfPeople(),
                      )
                    ],
                  ),
                ),


            ]),
          const SizedBox(height: Dimensions.spacebtwnContainer,),
          Positioned(
              right: 0,
              child: TextButton(
                onPressed:() {
                  Get.to(const ReserveNow());
                } ,
                child:
                const Text("Next >",
                    style: TextStyle(fontSize:Dimensions.textSizeDefault,color: Colors.green,decoration: TextDecoration.underline)),)),
   ]) );
  }
}
