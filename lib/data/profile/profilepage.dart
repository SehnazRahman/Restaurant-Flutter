import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/const/styling.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/data/profile/MyDetails/MyDetails.dart';
import 'package:restaurant/data/profile/myOrders.dart';
import 'package:restaurant/notification/notification.dart';
import 'package:restaurant/payment_method/ChoosePayment.dart';

import '../../rating/review_rating.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
        padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
        child: Column(
          children:[
              const Center(
                child: CircleAvatar(
                  radius: 46,
                  backgroundImage: AssetImage('Assets/images/profile.png'),
                ),
              ),
            const SizedBox(height: Dimensions.spacebtwnContainer),
            RichText(
                text: const TextSpan(
                    children: [
                      TextSpan(text: "Nombre de usuario: ",style:TextStyle(color:rColor.fontOverWhite,fontSize: Dimensions.textSizeSmall,decoration: TextDecoration.underline),),
                      TextSpan(text:" davidwatson198", style: TextStyle(color:rColor.fontOverWhite,fontSize: Dimensions.textSizeSmall),),
                    ]
                )),
            const SizedBox(height: Dimensions.spacebtwnContainer),
            Row(
              children: [
                IconButton(onPressed: (){
                  Get.to(const MyOrders());
                },
                    icon: const Icon(Icons.shopping_bag_outlined,color: Colors.green,)),
                const SizedBox(width: Dimensions.spacebtwnContainer),
                const Text('My Orders', style: TextStyle(fontSize: Dimensions.textSizeSearch),)
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){
                  Get.to(const MyDetails());
                },
                    icon: const Icon(Icons.pending_outlined,color: Colors.green,)),
                const SizedBox(width: Dimensions.spacebtwnContainer),
                const Text('My Details', style: TextStyle(fontSize: Dimensions.textSizeSearch),)
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){
                  Get.to(const NotificationPage());
                },
                    icon: const Icon(Icons.notifications_active_outlined,color: Colors.green,)),
                const SizedBox(width: Dimensions.spacebtwnContainer),
                const Text('Notifications', style: TextStyle(fontSize: Dimensions.textSizeSearch),)
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){
                  Get.to (const ChoosePayment());
                },
                    icon: const Icon(Icons.payments_outlined,color: Colors.green,)),
                const SizedBox(width: Dimensions.spacebtwnContainer),
                const Text('Payment Method', style: TextStyle(fontSize: Dimensions.textSizeSearch),)
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){
                  Get.to (const ReviewRating());
                },
                    icon: const Icon(Icons.rate_review_outlined,color: Colors.green,)),
                const SizedBox(width: Dimensions.spacebtwnContainer),
                const Text('Reviews and Opinions', style: TextStyle(fontSize: Dimensions.textSizeSearch),)
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){},
                    icon: const Icon(Icons.share_outlined,color: Colors.green,)),
                const SizedBox(width: Dimensions.spacebtwnContainer),
                const Text('Share with friends', style: TextStyle(fontSize: Dimensions.textSizeSearch),)
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){},
                    icon: const Icon(Icons.auto_awesome_outlined,color: Colors.green,)),
                const SizedBox(width: Dimensions.spacebtwnContainer),
                const Text('Rate the app', style: TextStyle(fontSize: Dimensions.textSizeSearch),)
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){},
                    icon: const Icon(Icons.help_outline_outlined,color: Colors.green,)),
                const SizedBox(width: Dimensions.spacebtwnContainer),
                const Text('FAQ', style: TextStyle(fontSize: Dimensions.textSizeSearch),),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){},
                    icon: const Icon(Icons.logout_outlined,color: Colors.green,)),
                const SizedBox(width: Dimensions.spacebtwnContainer),
                const Text('Log out', style: TextStyle(fontSize: Dimensions.textSizeSearch),)
              ],
            ),
          ]
        ),
      ),
    );
  }
}
