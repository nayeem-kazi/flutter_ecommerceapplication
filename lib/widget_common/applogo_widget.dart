import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapplication/const/colors.dart';
import 'package:flutter_ecommerceapplication/const/consts.dart';

Widget applogoWidget(){

  // using velocity_x here
  return Image.asset(icAppLogo).box.white.size(55, 55).padding(EdgeInsets.all(8.0)).rounded.make();
}