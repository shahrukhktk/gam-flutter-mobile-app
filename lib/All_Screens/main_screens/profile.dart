import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gam/All_Screens/Constants/app_assets.dart';
import 'editprofile.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  AppColors appassets = new AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          
          body: ListView(
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage('images/user_img.png'),
                  ),
                  Positioned(
                      top: 12,
                      left: 12,
                      right: 12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              IconButton(
                                icon: Image(image: AssetImage('images/ic_menu.png'),),
                                onPressed: ()
                                {
                                  // Navigator.pop(context);
                                },
                              ),

                              IconButton(
                                icon: Image(image: AssetImage('images/edit_icon.png'),),
                                onPressed: ()
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => EditProfileScreen()));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Martial Bogra', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: "Playfair_Display"
                    ),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image(image: AssetImage('images/calendar_icon.png'),),
                        ),
                        // Image(image: AssetImage('images/calendar_icon.png'),),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10),
                          child: Text('1974-04-23', style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey, fontFamily: "Playfair_Display"
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
                    child: Text('Permis de conduire', style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: "Playfair_Display"
                    ),),
                  ),
                ],
              ),

              //credit card
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 180,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/license_img.png'), fit: BoxFit.fill
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Image(image: AssetImage('images/lic_user_image.png'),)),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(Strings_Text.username, style: TextStyle(
                                              fontFamily: 'Playfair_Display', color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold
                                          ),),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(Strings_Text.lic_num, style: TextStyle(
                                              fontFamily: 'Playfair_Display', color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold
                                          ),),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(Strings_Text.address, style: TextStyle(
                                              fontFamily: 'Playfair_Display', color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.normal
                                          ),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Expanded(
                                  flex: 3,
                                  child: Text(Strings_Text.expiry, style: TextStyle(
                                      fontFamily: 'Playfair_Display', color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.normal
                                  ),),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Image(image: AssetImage('images/scan_ic.png'),),
                                ),

                              ],
                            ),
                          )
                        ],
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
