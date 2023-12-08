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
  DateTime focusDate = DateTime.now();
  DateTime? _selectedDay;
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
          child: Padding(
            padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of (context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: Dimensions.spacebtwnContainer,),
                     Text(DefineText.searchRstntText,
                                style: TextStyle(fontSize: Dimensions.textSizeSearch,color: colorDecoration.infoDisplayFont ),textAlign: TextAlign.center),
                    ],
                  ),
                  const SizedBox(height: Dimensions.spacebtwnContainer,),
                  Container(
                    height: Dimensions.calenderContainerHeight*0.85,
                    width:Dimensions.calenderContainerWidth,
                    decoration: BoxDecoration(
                      border: Border.all(color: colorDecoration.calenderContainer,),
                    ),

                    child: TableCalendar(
                      headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true,),
                      firstDay: DateTime.utc(2023, 12, 2),
                      focusedDay:focusDate,
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      lastDay: DateTime(2024, 2,1),
                      calendarStyle: const CalendarStyle(
                        isTodayHighlighted: true,
                        weekendTextStyle: TextStyle(color: Colors.grey),
                        todayDecoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        selectedDecoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),
                      ),
                      onDaySelected: (selectedDay,focusDay){
                        if (!isSameDay (_selectedDay,selectedDay)){
                          setState(() {
                            _selectedDay = selectedDay;
                            focusDate = focusDay;
                          });
                        }
                      },
                      selectedDayPredicate: (day){
                        return isSameDay(_selectedDay,day);
                      },
                    ),
                  ),
                  const SizedBox(height: Dimensions.spacebtwnSmallContainer,),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Get.to(const Food());
                        },
                        child:
                        const Text(" Next >",
                            style: TextStyle(fontSize:Dimensions.textSizeDefault,color: Colors.green,decoration: TextDecoration.underline)),)),
                ],
              ),
            ),
          ),
        ),

  );
  }
}
