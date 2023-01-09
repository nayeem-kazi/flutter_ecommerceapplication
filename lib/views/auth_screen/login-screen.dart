import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapplication/const/consts.dart';
import 'package:flutter_ecommerceapplication/ui/home.dart';
import 'package:flutter_ecommerceapplication/widget_common/applogo_widget.dart';
import 'package:get/get.dart';
import '../../const/lists.dart';
import '../../widget_common/bg_widget.dart';
import '../../widget_common/custom_textfield.dart';
import '../../widget_common/our_button.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
            body: Center(
      child: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Column(
            children: [
              customTextField(hint: emailHint, title: email),
              customTextField(hint: passwordhint, title: password),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetpassword.text.make())),
              5.heightBox,
              ourButton(
                      color: redColor,
                      title: login,
                      textColor: whiteColor,
                      onPress: () {
                        Get.to(()=>Home());
                      })
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              5.heightBox,
              createNewAccount.text.color(fontGrey).make(),
              5.heightBox,
              ourButton(
                      color: lightGolden,
                      title: signup,
                      textColor: whiteColor,
                      onPress: () {
                        Get.to(()=> const SignupScreen());
                      })
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
            ],
          )
              .box
              .white
              .rounded
              .padding(EdgeInsets.all(16))
              .width(context.screenWidth - 70).shadowSm
              .make(),
          10.heightBox,
          loginWith.text.color(fontGrey).make(),
          5.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                          radius: 25,
                          child: Image.asset(
                            socialIconList[index],
                            width: 30,
                          ),
                        ),
                  )))
        ],
      ),
    )));
  }
}


