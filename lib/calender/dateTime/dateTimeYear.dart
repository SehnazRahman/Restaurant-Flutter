import 'package:flutter/material.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/text.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:restaurant/const/styling.dart';
import 'package:get/get.dart';
import '../Food.dart';

class DateTimeYear extends StatefulWidget{
  const DateTimeYear({super.key});

  @override
  State<StatefulWidget> createState() => _DateTimeYear();
}

class _DateTimeYear extends State<DateTimeYear> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      elevation: 0,
      title: const Text('Search Restaurant'),
    ),
      body:
        Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: Dimensions.spacebtwnContainer,),
                 Text(DefineText.searchRstntText,
                            style: TextStyle(fontSize: Dimensions.textSizeSearch,color: rColor.infoDisplayFont ),textAlign: TextAlign.center),
                ],
              ),
              const SizedBox(height: Dimensions.spacebtwnContainer,),
              Container(
                height: Dimensions.calenderContainerHeight*0.85,
                width:Dimensions.calenderContainerWidth,
                decoration: BoxDecoration(
                  border: Border.all(color: rColor.calenderContainer,),
                ),

                child: TableCalendar(
                  headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true,),
                  firstDay: DateTime.utc(2023, 11, 2),
                  focusedDay: DateTime.now(),
                  lastDay: DateTime(2024, 2,1),
                  calendarStyle: CalendarStyle(),
                ),
              ),
              const SizedBox(height: Dimensions.spacebtwnContainer,),
              Positioned(
                  right: 0,
                  child: TextButton(
                    onPressed: () {
                      Get.to(const Food());
                    },
                    child:
                    const Text(" Next >",
                        style: TextStyle(fontSize:Dimensions.textSizeDefault,color: Colors.green,decoration: TextDecoration.underline)),)),
          //textDirection: TextDirection.rtl,),,

            ],
          ),
        ),

  );
  }
}
