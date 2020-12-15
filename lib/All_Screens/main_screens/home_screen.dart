import 'package:flutter/material.dart';
import 'package:gam/All_Screens/Authentication_screens/resetpassword.dart';
import 'package:gam/All_Screens/Authentication_screens/signup.dart';
import 'package:gam/All_Screens/Constants/app_assets.dart';
import 'package:gam/All_Screens/Constants/custom_textfield.dart';
import 'package:gam/All_Screens/main_screens/profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  AppColors appassets = new AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(

              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('Home Screen', style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: "Playfair_Display"
                  ),
                    textAlign: TextAlign.end,),
                ),
              ),

          ),
    );
  }
}
