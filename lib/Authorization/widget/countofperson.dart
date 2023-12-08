import 'package:flutter/material.dart';
import 'package:restaurant/const/color.dart';
import '../../const/styling.dart';

class CountOfPeople extends StatefulWidget {
  const CountOfPeople({super.key});

    @override
  State<CountOfPeople> createState() => _CountOfPeopleState();
}

class _CountOfPeopleState extends State<CountOfPeople> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
          children: List.generate(50, (index){

    return Container(
    height:Dimensions.discountHeight ,
    width: Dimensions.discountWidth,
    decoration: BoxDecoration(
    boxShadow: const [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius:0.3)],
    border: Border.all(color: colorDecoration.discountBorder),borderRadius: const BorderRadius.all(Radius.circular(5)),),
    child: Column(
    children:[
    Expanded
    ( flex : 2,
    child: Center(child: Text('$index', style: const TextStyle(fontSize: Dimensions.textSizeSmall),)),),
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
    )]
    ));
    }),),
      )
    );
  }
}
