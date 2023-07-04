import 'package:flutter/material.dart';
import 'package:ecommerce_test_app/utils/colors_const/app_colors.dart';
import 'package:flutter/services.dart';

ThemeData ligthTheme  = ThemeData(
  scaffoldBackgroundColor:CbackgroundAppColors,
  primarySwatch: Colors.deepOrange,

  appBarTheme: AppBarTheme(
    elevation: 0.0,
    color: Colors.white,
    titleTextStyle:TextStyle(color:appBlackTextColor,fontSize: 20,fontWeight: FontWeight.bold),

    iconTheme: IconThemeData(
      color: appBlackTextColor,
    ),
    backwardsCompatibility: false,

    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: appWhiteColor,
      statusBarIconBrightness: Brightness.dark,
    ),

  ),
);