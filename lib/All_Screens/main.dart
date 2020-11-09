import 'package:flutter/material.dart';

import 'Authentication_screens/signup.dart';
import 'Constants/app_assets.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: AppColors.themecolor,
    accentColor: AppColors.accentcolor,
    fontFamily: "Poppins",
  ),
  debugShowCheckedModeBanner: false,
  home: SignupScreen(),
));