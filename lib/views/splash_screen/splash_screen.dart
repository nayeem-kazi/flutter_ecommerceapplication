
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapplication/const/colors.dart';
import 'package:flutter_ecommerceapplication/const/consts.dart';
import 'package:flutter_ecommerceapplication/views/auth_screen/login-screen.dart';
import 'package:flutter_ecommerceapplication/widget_common/applogo_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';






class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //Created a method to change Screen

  ChangeScreen(){
    Future.delayed(const Duration(seconds: 3),(){
      //using getx
      Get.to(() => const LoginScreen());
    });
  }
  @override
  void initState() {
    ChangeScreen();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg,width: 300)),
            20.heightBox,
              applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox
            // Our Splash Screen UI ic complete
          ],
        ),
      ),
    );
  }
}
