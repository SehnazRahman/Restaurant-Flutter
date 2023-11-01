import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

abstract class DateTimeYear extends StatefulWidget{
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
        title: const Text('Search Restaurant'),
      ),
      body: TableCalendar(
          firstDay: DateTime.utc(2023, 11, 2),
          focusedDay: DateTime.now(),
          lastDay: DateTime.utc(2024,2,30)) ,
    );
  }
}