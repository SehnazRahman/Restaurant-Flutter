import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DateTime extends StatefulWidget{
  const DateTime({super.key});

  @override
  State<StatefulWidget> createState() => _DateTime();
}

class _DateTime extends State<DateTime> {
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