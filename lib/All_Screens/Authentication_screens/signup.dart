import 'package:flutter/material.dart';
import 'package:gam/All_Screens/Authentication_screens/login.dart';
import 'package:gam/All_Screens/Constants/app_assets.dart';
import 'package:gam/All_Screens/Constants/custom_textfield.dart';

import 'congrats.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

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
            padding: EdgeInsets.all(20),
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Image(image: AssetImage('images/logo.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(Strings_Text.signup, style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(Strings_Text.signuptag, style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w300, color: Colors.grey
                      ),),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textFieldWidget(text: Strings_Text.firstname,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textFieldWidget(text: Strings_Text.lastname,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textFieldWidget(text: Strings_Text.email,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textFieldWidget(text: Strings_Text.phone,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textFieldWidget(text: Strings_Text.password,),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(Strings_Text.privacy_text, style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CongratScreen()));
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
                          child: Text(Strings_Text.createaccount, style: TextStyle(
                              color: Colors.white, fontSize: 16.0
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Strings_Text.signupwith, style: TextStyle(
                        color: Colors.grey, fontSize: 16.0
                    ),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Image(image: AssetImage('images/fb_icon.png'),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image(image: AssetImage('images/google_icon.png'),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(Strings_Text.signinoption, style: TextStyle(
                        color: Colors.grey, fontSize: 13.0
                    ),),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(Strings_Text.signin, style: TextStyle(
                            color: AppColors.themecolor, fontSize: 13.0
                        ),),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
