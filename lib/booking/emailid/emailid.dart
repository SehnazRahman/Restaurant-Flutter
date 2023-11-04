import'package:flutter/material.dart';
import 'package:restaurant/const/styling.dart';

class BookingEmailid extends StatefulWidget {
  const BookingEmailid({super.key});

  @override
  State<BookingEmailid> createState() => _BookingEmailidState();
}

class _BookingEmailidState extends State<BookingEmailid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('Enter Email'),
      ),
      body: Column(
        children: [
          SizedBox(
            height:Dimensions.bookingImageHeight,
            width: Dimensions.bookingImageWidth,
            child: Image.asset('Asset/images/Restaurant.jpg',fit: BoxFit.cover,),
          )
        ],)
    );
  }
}
