import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapplication/const/consts.dart';
import 'package:flutter_ecommerceapplication/views/splash_screen/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        // set appbar icon colors
        iconTheme: IconThemeData(
          color: darkFontGrey,
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: SplashScreen()
    );
  }
}
