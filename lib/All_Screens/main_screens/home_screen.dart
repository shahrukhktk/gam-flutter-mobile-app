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
          body: ListView(
            padding: EdgeInsets.all(15.0),
            children: [
              SizedBox(height: 40,),
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.menu, color: Colors.black,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('images/lic_user_image.png'),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bonjour, Martial', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: "Playfair_Display"),),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text('quelle voiture a besoin de notre aide?', style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey, fontFamily: "Playfair_Display"),),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),

              
            ],
          )
    );
  }
}
