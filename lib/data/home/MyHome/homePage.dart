import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/Authorization/controller/authController.dart';
import 'package:restaurant/Authorization/widget/greeting.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/data/home/beverages/beverages.dart';
import 'package:restaurant/data/home/description/description.dart';
import 'package:restaurant/data/home/dessert/dessert.dart';
import 'package:restaurant/data/home/dish/dish.dart';
import 'package:restaurant/data/home/incoming/incoming.dart';
import 'package:restaurant/homeDemo/homeController.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController homePageCtrl = Get.find<HomePageController>();
  AuthController authCtrl = Get.find<AuthController>();
  List<bool> isSelected = [true, false, false,false,false];
  Color _color = Colors.green;
  Color txtColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () { Get.back(); },
            icon: const Icon(Icons.arrow_back_sharp,color: Colors.black)),
          elevation: 0,
      ),
        body: Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                    child: GreetingWidget()),
                const Text("David Watson", style: TextStyle(
                      fontSize: Dimensions.textSizeDefault,
                      fontWeight: Dimensions.medium)),
                  const SizedBox(height: Dimensions.spacebtwnContainer,),
                  const Text("Find your best meal..", style: TextStyle(
                      fontSize: Dimensions.textSizeSemiLarge,
                      fontWeight: Dimensions.medium)),
                  const SizedBox(height: Dimensions.spacebtwnContainer,),
                  Container(
                    height: Dimensions.searchHeight,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: colorDecoration.greenContainer,),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                         Expanded(flex:1,child: Center(child: Icon(Icons.search, color: colorDecoration.infoDisplayFont)),),
                         Expanded(flex: 15,
                           child:Center(
                             child: TextFormField(
                               textAlign: TextAlign.start,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText:"Type of cuisine,name of restaurant...",
                                focusedBorder: const OutlineInputBorder(borderSide:
                                BorderSide(color: Colors.transparent)),
                                enabledBorder: OutlineInputBorder(borderSide:
                                const BorderSide(color: Colors.transparent)),
                              ),
                              controller: authCtrl.emailCtrl,
                          ),
                           ),
                        ),
                        Expanded(flex: 3,
                          child: Container(
                            height: Dimensions.searchHeight,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: const BoxDecoration(
                                color: colorDecoration.greenContainer,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10))
                            ),
                            child: const Center(child: Text('GO', style: TextStyle(
                                fontSize: Dimensions.textSizeDefaultLarge,
                                color: colorDecoration.fontOverGreen),)),
                          ),
                        ),
                      ],
                    ),),
                  const SizedBox(height: Dimensions.spacebtwnContainer,),

                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.9,
                        height: 50,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: homePageCtrl.containerNamesList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return


                                /*ToggleButtons(
                                  isSelected: isSelected,
                                  selectedColor: Colors.white,
                                  color: Colors.green,
                                  focusColor: Colors.green ,
                                  fillColor: Colors.green,
                                  borderRadius: BorderRadius.circular(6),
                                  borderWidth: 0,

                                  onPressed: (int newIndex){
                                        setState(() {
                                          final isOneSelected = isSelected.where((element) => element).length == 1;
                                          if (isOneSelected && isSelected[newIndex]) return;
                                          for (int index = 0; index < isSelected.length; index++) {
                                            // checking for the index value
                                            if (index == newIndex) {
                                              // toggle between the old index and new index value
                                              isSelected[index] = !isSelected[index];
                                            }
                                            else {
                                              // other two buttons will not be selected and are set to false
                                              isSelected[index] = false;
                                            }
                                          }
                                        });
                                        setState(() {
                                        homePageCtrl.ind = index;});
                              },
                                  children:  [
                                Container(
                                height: 35,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 1,
                                  ),
                                ),
                                child:const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text('Description', style: TextStyle(fontSize: 12)),
                                    ),),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text('Incoming', style: TextStyle(fontSize: 12)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text('Dish', style: TextStyle(fontSize: 12)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text('Dessert', style: TextStyle(fontSize: 12)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text('Beverages', style: TextStyle(fontSize: 12)),
                                    ),
                                  ],
                              ); */
                                
                               GestureDetector(

                                  onTap: () {
                                    setState(() {
                                      homePageCtrl.ind = index;
                                      _color == Colors.green ? _color = Colors.white : _color = Colors.green;
                                      txtColor == Colors.white ? txtColor = Colors.green : txtColor = Colors.white;
                                    });
                                  },
                                  child: Center(
                                    child: tabContainer(txt: homePageCtrl
                                        .containerNamesList[index]),
                                  ));



                            }),
                      ),
                    ],),
                  if(homePageCtrl.ind == 0)
                    const Description(),
                  if(homePageCtrl.ind == 1)
                    const Incoming(),
                  if(homePageCtrl.ind == 2)
                    const Dish(),
                  if(homePageCtrl.ind == 3)
                    const Dessert(),
                  if(homePageCtrl.ind == 4)
                    const Beverages(),

                ]),
          ),
        ));
  }

  tabContainer({String? txt}) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
      child: Container(
        height: 35,
        width: 65,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Colors.green,
            width: 1,
          ),
        ),
        child: Center(
          child: Text('$txt',
            style: TextStyle(
            color: txtColor, fontSize: 12,
            fontWeight: FontWeight.bold,),
          ),
        ),
      ),
    );
  }
}


