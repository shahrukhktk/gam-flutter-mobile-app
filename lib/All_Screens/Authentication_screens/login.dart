import 'package:flutter/material.dart';
import 'package:gam/All_Screens/Authentication_screens/resetpassword.dart';
import 'package:gam/All_Screens/Authentication_screens/signup.dart';
import 'package:gam/All_Screens/Constants/app_assets.dart';
import 'package:gam/All_Screens/Constants/custom_textfield.dart';
import 'package:gam/All_Screens/main_screens/profile.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
                      child: Text(Strings_Text.signin, style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(Strings_Text.signintag, style: TextStyle(
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
                      child: email_Textfield(text: Strings_Text.email,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: password_Textfield(text: Strings_Text.password,),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResetPasswordScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 25, bottom: 25),
                  child: Text(Strings_Text.forgotpassword, style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.themecolor
                  ),
                  textAlign: TextAlign.end,),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: FlatButton(
                  onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ProfileScreen()));
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
                          child: Text(Strings_Text.login, style: TextStyle(
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
                    Text(Strings_Text.loginwith, style: TextStyle(
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
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 25, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(Strings_Text.joinusnow, style: TextStyle(
                        color: Colors.grey, fontSize: 13.0
                    ),),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignupScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(Strings_Text.register, style: TextStyle(
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
