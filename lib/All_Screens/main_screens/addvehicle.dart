import 'package:flutter/material.dart';
import 'package:gam/All_Screens/Authentication_screens/resetpassword.dart';
import 'package:gam/All_Screens/Authentication_screens/signup.dart';
import 'package:gam/All_Screens/Constants/app_assets.dart';
import 'package:gam/All_Screens/Constants/custom_textfield.dart';
import 'package:gam/All_Screens/main_screens/profile.dart';

class AddNewVehicle extends StatefulWidget {
  @override
  _AddNewVehicleState createState() => _AddNewVehicleState();
}

class _AddNewVehicleState extends State<AddNewVehicle> {

  AppColors appassets = new AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: ListView(
            padding: EdgeInsets.all(20),
            children: [

              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_ios, color: Colors.black,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(Strings_Text.addvehicle, style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: "Playfair_Display"
                      ),
                        textAlign: TextAlign.end,),
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
                padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: name_ofvehicle(text: Strings_Text.vehiclename,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: make_ofvehicle(text: Strings_Text.make,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: make_ofvehicle(text: Strings_Text.model,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: make_ofvehicle(text: Strings_Text.vehicleplatno,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: make_ofvehicle(text: Strings_Text.reg_num,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: dob_textfield(text: Strings_Text.vehicle_year,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: mileage_ofvehicle(text: Strings_Text.vehicle_mileage,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: make_ofvehicle(text: Strings_Text.insurance_num,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: dob_textfield(text: Strings_Text.expiry_date,),
                    ),

                  ],
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 15),
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
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Card(
                        elevation: 1,
                        color: AppColors.themecolor,
                        child: Center(
                          child: Text(Strings_Text.addvehicle, style: TextStyle(
                              color: Colors.white, fontSize: 16.0, fontFamily: "Playfair_Display"
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
