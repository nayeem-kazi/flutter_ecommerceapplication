import 'package:flutter/material.dart';
import 'dart:async';
import '../const/AppColors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deep_orange,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("E-Commerce",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 44.sp),),
              SizedBox(height: 20.h,),
              CircularProgressIndicator(color: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}
