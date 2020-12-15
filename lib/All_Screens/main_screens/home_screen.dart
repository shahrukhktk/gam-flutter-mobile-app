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

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 5.0,),
                      child: Image(image: AssetImage('images/car1.png'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 5.0,),
                      child: Image(image: AssetImage('images/car2.png'),),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8, top: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Mini Cooper', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: "Playfair_Display"),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text('2018', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.grey, fontFamily: "Playfair_Display"),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Moteur turbo diesel de 2,0 L', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey, fontFamily: "Playfair_Display"),),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage('images/ic_history.png')),
                    Image(image: AssetImage('images/ic_booking_mechanic.png')),
                    Image(image: AssetImage('images/ic_car_wash.png')),
                    Image(image: AssetImage('images/ic_modify_carinfo.png')),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 8, right: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(image: AssetImage('images/expirydate_icon.png')),
                        Text("Date \nd'expiration", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey, fontFamily: "Playfair_Display"),),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('images/insurance_nmbr_icon.png')),
                        Text("Numéro \nd'assurance", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey, fontFamily: "Playfair_Display"),),
                      ],
                    ),

                    SizedBox(height: 15,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(image: AssetImage('images/expirydate_icon.png')),
                        Text("Numéro \nd'immatriculation", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey, fontFamily: "Playfair_Display"),),
                        Image(image: AssetImage('images/insurance_nmbr_icon.png')),
                        Text("Année \ndu véhicule", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey, fontFamily: "Playfair_Display"),),
                      ],
                    ),

                    SizedBox(height: 15,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(image: AssetImage('images/visittechnique_icon.png')),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text("Visite technique", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey, fontFamily: "Playfair_Display"),),
                        ),
                      ],
                    ),


                  ],
                ),
              ),

              
            ],
          )
    );
  }
}
