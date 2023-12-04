import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  TextEditingController emailCtrl = TextEditingController();

  signIn(){
    if(emailCtrl.text.isNotEmpty || emailCtrl.text !=""){
      print('email is not empty');
      print(emailCtrl.text);
    }
  }

  TextEditingController greetingCtrl = TextEditingController();

  Greeting() async {

  void main(){

  if (12 > DateTime.now().hour ) {
  Text("Good Morning");
  }
  if ( 12 < DateTime.now().hour && 16 > DateTime.now().hour){
   Text("Good Afternoon");
  }
  else {
    Text("Good Evening");
  }
  }

  }


}