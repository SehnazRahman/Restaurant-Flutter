
import 'package:flutter/widgets.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current time
    DateTime now = DateTime.now();
    int hour = now.hour;

    // Determine the greeting message based on the time
    String greeting = "Good Morning";
    if (hour >= 12 && hour < 18) {
      greeting = "Good Afternoon";
    } else if (hour >= 18) {
      greeting = "Good Evening";
    }

    return Text(
      greeting,
      style: TextStyle(fontSize: 12),
    );
  }
}