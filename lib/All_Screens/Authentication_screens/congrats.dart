import 'package:flutter/material.dart';
import 'package:gam/All_Screens/Authentication_screens/login.dart';
import 'package:gam/All_Screens/Authentication_screens/signup.dart';
import 'package:gam/All_Screens/Constants/app_assets.dart';
import 'package:gam/All_Screens/Constants/custom_textfield.dart';

class CongratScreen extends StatefulWidget {
  @override
  _CongratScreenState createState() => _CongratScreenState();
}

class _CongratScreenState extends State<CongratScreen> {

  AppColors appassets = new AppColors();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
              fit: BoxFit.cover
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            // padding: EdgeInsets.all(12),
            children: [

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image(image: AssetImage('images/logo.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(Strings_Text.congrats, style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(Strings_Text.congratstag, style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w300, color: Colors.grey
                      ),),
                    ),
                  ],
                ),
              ),

              Image(
                image: AssetImage('images/mechanics.png'),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 70.0, bottom: 15),
                child: FlatButton(
                  onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignupScreen()));
                  },
                  child: SizedBox(
                    height: 55,
                    width: 335,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Card(
                        elevation: 1,
                        color: AppColors.themecolor,
                        child: Center(
                          child: Text(Strings_Text.proceed, style: TextStyle(
                              color: Colors.white, fontSize: 16.0
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
