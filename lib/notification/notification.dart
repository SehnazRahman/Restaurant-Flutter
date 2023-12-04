import 'package:flutter/material.dart';
import 'package:restaurant/const/styling.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool pushNotification =false;
  bool smsdelivery =false;
  bool offers =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Notification'),
      elevation: 0,
      backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            activeColor: Colors.green,
              value: pushNotification,
              onChanged: (value){
                setState(() {
                  pushNotification = value;
                });
              },
            title: const Text('Receive push notifications',
            style: TextStyle(fontSize: Dimensions.textSizeSearch),),
              ),
          SwitchListTile(
            activeColor: Colors.green,
            value: smsdelivery,
            onChanged: (value){
              setState(() {
                smsdelivery = value;
              });
            },
            title: const Text('SMS delivery notification',
              style: TextStyle(fontSize: Dimensions.textSizeSearch),),
          ),
          SwitchListTile(
            activeColor: Colors.green,
            value: offers,
            onChanged: (value){
              setState(() {
                offers = value;
              });
            },
            title: const Text('Receive offers by email',
              style: TextStyle(fontSize: Dimensions.textSizeSearch),),
          ),
        ],
      ),
    );
  }
}

    