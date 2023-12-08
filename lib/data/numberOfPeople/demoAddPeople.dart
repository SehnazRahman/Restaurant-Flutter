import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/booking/reserve/reserve.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/const/color.dart';
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
      SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of (context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: Dimensions.spacebtwnContainer,),
                  const Text(DefineText.searchRstntText,
                      style: TextStyle(fontSize: Dimensions.textSizeSearch,color: colorDecoration.infoDisplayFont ),textAlign: TextAlign.center),
                  const SizedBox(height: Dimensions.spacebtwnContainer,),
                  Container(
                    height: Dimensions.addPleoplecCntnrHeight,
                    width:MediaQuery.of(context).size.width*0.85,
                    decoration: BoxDecoration(
                    border: Border.all(color: colorDecoration.calenderContainer,),
                    ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: Dimensions.spacebtwnContainer,),
                          const Expanded(
                              flex:1,
                              child: Text("Number of people",style: TextStyle(fontSize: Dimensions.textSizeDefault,fontWeight: Dimensions.medium))),
                          Expanded(
                            flex: 9,
                            child: Padding(
                              padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: GridView.count(crossAxisCount: 4,
                              crossAxisSpacing: 30,
                              mainAxisSpacing: 30,
                              children: List.generate(50, (index) {
                                return Container(
                                  height:Dimensions.discountHeight ,
                                  width: Dimensions.discountWidth,
                                  decoration: BoxDecoration(
                                      boxShadow: const [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius:0.3)],
                                      border: Border.all(color: colorDecoration.discountBorder),borderRadius: const BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Column(
                                    children: [
                                       Expanded
                                        ( flex : 2,
                                          child:  Center(child: Text( '${(index+1)}',style: const TextStyle(fontSize: Dimensions.textSizeSmall),))),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                            color: colorDecoration.discountContainer,
                                            boxShadow: [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius:0.3)],
                                            borderRadius:BorderRadius.only(bottomLeft:Radius.circular(5),bottomRight: Radius.circular(5)) ,
                                          ),
                                          child: const Text("-30%",style: TextStyle(color: colorDecoration.discountFont,fontSize: Dimensions.textSizeSmall),),),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                ]),
              const SizedBox(height: Dimensions.spacebtwnContainer,),
              Align(alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed:() {
                      Get.to(const ReserveNow());
                    } ,
                    child:
                    const Text("Next >",
                        style: TextStyle(fontSize:Dimensions.textSizeDefault,color: Colors.green,decoration: TextDecoration.underline)),)),
   ]),
        ),
      ) );
  }
}
