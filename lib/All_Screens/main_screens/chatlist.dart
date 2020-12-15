import 'package:flutter/material.dart';
import 'package:gam/All_Screens/Authentication_screens/resetpassword.dart';
import 'package:gam/All_Screens/Authentication_screens/signup.dart';
import 'package:gam/All_Screens/Constants/app_assets.dart';
import 'package:gam/All_Screens/Constants/custom_listtile.dart';
import 'package:gam/All_Screens/Constants/custom_textfield.dart';
import 'package:gam/All_Screens/main_screens/profile.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {

  AppColors appassets = new AppColors();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

        appBar: AppBar(
          title: Center(
            child: Text('Conversation', style: TextStyle(
               fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: "Playfair_Display"
              ),),
          ),
          leading: GestureDetector(
            onTap: () { /* Write listener code here */ },
            child: Icon(
              Icons.menu,  // add custom icons also
            ),
          ),
          actions: [
          Padding(
                  padding: EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                    onTap: () {},
                      child: Icon(
                        Icons.search,
                        size: 26.0,
                    ),
                ),
            ),
          ],
        ),


      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(12.0),
        children: <Widget>[

          DariaList(title: "Daria", subtitle: "Hey! Comment ça va? Je cherche...",),

          Divider(
            thickness: 1,
            height: 20,
          ),

          JavierList(title: "Javier", subtitle: "Je suis libre après 16h ce dimanche ...",),

          Divider(
            thickness: 1,
            height: 20,
          ),

          AlexList(title: "Alex", subtitle: "Cela sonne bien! Je te verrai prochainement...",),

          Divider(
            thickness: 1,
            height: 10,
          ),

          DariaList(title: "Daria", subtitle: "Hey! Comment ça va? Je cherche...",),

          Divider(
            thickness: 1,
            height: 20,
          ),

          JavierList(title: "Javier", subtitle: "Je suis libre après 16h ce dimanche ...",),

          Divider(
            thickness: 1,
            height: 20,
          ),

          AlexList(title: "Alex", subtitle: "Cela sonne bien! Je te verrai prochainement...",),

          Divider(
            thickness: 1,
            height: 20,
          ),



        ],
      ),
    );
  }
}
