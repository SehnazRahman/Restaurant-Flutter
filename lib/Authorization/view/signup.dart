import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/Authorization/view/signIn.dart';
import 'package:restaurant/registration/verification.dart';
import 'package:restaurant/const/color.dart';
import '../../const/styling.dart';
import '../controller/authController.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<StatefulWidget> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<Registration>{
  AuthController authCtrl = Get.find<AuthController>();
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
      body:SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Padding(
                  padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Register", style: TextStyle(fontSize: Dimensions.textSizeExtraLarge, fontWeight: FontWeight.w900, color: colorDecoration.fontOverWhite,)),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(text: "Create an",style:TextStyle(color:colorDecoration.fontDefault,fontSize: Dimensions.textSizeDefault),),
                              TextSpan(text:" account", style: TextStyle(color:colorDecoration.fontOverWhite,fontSize: Dimensions.textSizeDefault),),
                              TextSpan(text:" to access all the features of",style:TextStyle(color:colorDecoration.fontDefault,fontSize: Dimensions.textSizeDefault),),
                              TextSpan(text:" thefork!", style: TextStyle(color:colorDecoration.fontDefault,fontWeight: Dimensions.semiBold))
                            ]
                            )),
                      const SizedBox(
                        height: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Email", style: TextStyle(fontSize:Dimensions.textSizeDefault)),
                          TextFormField(
                            // keyboardType: TextInputType.e,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.alternate_email_rounded, color: Colors.green,),
                              hintText: "Enter Email Id",
                              focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                              BorderSide(color: colorDecoration.greenContainer,width:2)),
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                              const BorderSide(color: colorDecoration.greenContainer,width: 2)),
                            ),
                          ),
                          const SizedBox(
                            height: Dimensions.spacebtwnContainer,
                          ),
                          const Text("Your Name", style: TextStyle(fontSize:Dimensions.textSizeDefault)),
                          TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person_2_outlined, color: Colors.green,),
                              hintText: "Ex:Saul Ramirez",
                              focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                              BorderSide(color: colorDecoration.greenContainer,width:2)),
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                              const BorderSide(color: colorDecoration.greenContainer,width: 2)),
                            ),
                          ),
                          const SizedBox(
                            height: Dimensions.spacebtwnContainer,
                          ),
                          const Text("Password",style: TextStyle(fontSize: Dimensions.textSizeDefault,)),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.remove_red_eye_outlined,color: Colors.green,),
                              hintText: "Enter the password",
                              focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:
                              BorderSide(color: colorDecoration.greenContainer,width:2)),
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:
                              const BorderSide(color: colorDecoration.greenContainer,width: 2)),
                            ),
                          ),
                          const SizedBox(
                            height: Dimensions.spacebtwnContainer,
                          ),
                          Container(
                              height: Dimensions.containerHeight,
                              width: Dimensions.containerWidth,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),),
                              child: ElevatedButton(
                                onPressed: (){
                                  Get.to(const Verification());
                                }, child: Text('Register'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                  textStyle: const TextStyle(
                                       fontSize: Dimensions.textSizeDefault, fontWeight: Dimensions.semiBold),
                                ),
                                )),

                          const SizedBox(
                            height: Dimensions.spacebtwnContainer,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Already have an account?",
                                    style:
                                    TextStyle(fontSize: 18, color: Colors.black)),
                                TextButton(
                                  child: const Text("Login",
                                      style: TextStyle( decoration: TextDecoration.underline,
                                        fontSize: 18, color: Colors.green,)),
                                  onPressed: () {
                                    Get.to(const LoginPage());
                                  },
                                )]),
                        ],
                      ),
                    ],
                  ),
                ),]),
        ),
      ),
    );
  }
}