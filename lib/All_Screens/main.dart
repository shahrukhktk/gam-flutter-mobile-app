import 'package:flutter/material.dart';
import 'package:gam/All_Screens/Authentication_screens/login.dart';
import 'Constants/app_assets.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: AppColors.themecolor,
    accentColor: AppColors.accentcolor,
    fontFamily: "Poppins",
  ),
  debugShowCheckedModeBanner: false,
  home: LoginScreen(),
));