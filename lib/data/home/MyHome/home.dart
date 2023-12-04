import 'package:flutter/material.dart';
import 'package:restaurant/data/cart/myCart.dart';
import 'package:restaurant/data/home/MyHome/homePage.dart';
import '../../profile/profilepage.dart';



class Home extends StatefulWidget{
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 int MyIndex =0;
 List pages = [
   HomePage(),
   MyCart(),
   ProfilePage(),
 ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        bottomNavigationBar:BottomNavigationBar(
          onTap: (index){
            setState(() {
              MyIndex = index;
            });
          },
          currentIndex: MyIndex,
          useLegacyColorScheme: false,
          unselectedLabelStyle: const TextStyle(color: Colors.white),
          selectedLabelStyle: const TextStyle(color: Colors.white),
          //selectedIconTheme: const IconThemeData(opticalSize: 100),
          backgroundColor:Colors.green ,
            items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(

            icon:Icon(Icons.home_outlined, color: Colors.white,),
            activeIcon: Icon(Icons.home_filled, color: Colors.white,),
            label: 'Home',),
        BottomNavigationBarItem(
            icon:Icon(Icons.shopping_cart_outlined,color: Colors.white,),
            activeIcon: Icon(Icons.shopping_cart_rounded, color: Colors.white,),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon:Icon(Icons.person_outline,color: Colors.white,),
            activeIcon: Icon(Icons.person, color: Colors.white,),
            label: 'Profile'),
      ],
    ),
      body:  pages[MyIndex],
    );
  }
}
