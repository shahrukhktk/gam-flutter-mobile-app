import 'package:flutter/material.dart';
import 'package:gam/All_Screens/Authentication_screens/login.dart';
import 'Constants/app_assets.dart';
import 'main_screens/addvehicle.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: AppColors.themecolor,
    accentColor: AppColors.accentcolor,
    fontFamily: "Poppins",
  ),
  debugShowCheckedModeBanner: false,
  home: AddNewVehicle(),
));