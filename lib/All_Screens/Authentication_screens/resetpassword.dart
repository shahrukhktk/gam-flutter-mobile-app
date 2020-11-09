import 'package:flutter/material.dart';
import 'package:gam/All_Screens/Authentication_screens/login.dart';
import 'package:gam/All_Screens/Constants/app_assets.dart';
import 'package:gam/All_Screens/Constants/custom_textfield.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

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
            padding: EdgeInsets.all(12),
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
                      child: Text(Strings_Text.resetpassword, style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(Strings_Text.resetpasswordtag, style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w300, color: Colors.grey
                      ),),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: textFieldWidget(text: Strings_Text.email,),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 70.0, bottom: 15),
                child: FlatButton(
                  onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginScreen()));
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
                          child: Text(Strings_Text.submit, style: TextStyle(
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
