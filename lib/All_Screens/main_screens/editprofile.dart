import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gam/All_Screens/Constants/app_assets.dart';
import 'package:gam/All_Screens/Constants/custom_textfield.dart';
import 'package:gam/All_Screens/main_screens/profile.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  AppColors appassets = new AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          
          body: ListView(
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage('images/edit_profileicon.png'),
                  ),
                  Positioned(
                      top: 12,
                      left: 12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey,),
                            onPressed: ()
                            {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      )
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: firstname_textfield(text: Strings_Text.username),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: dob_textfield(text: Strings_Text.dob,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: password_Textfield(text: Strings_Text.updatepassword,),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 40.0, bottom: 15),
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
                          child: Text(Strings_Text.saveupdates, style: TextStyle(
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
    );
  }
}
