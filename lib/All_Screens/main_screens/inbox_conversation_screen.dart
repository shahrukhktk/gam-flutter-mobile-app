import 'package:flutter/material.dart';
import 'package:gam/All_Screens/Authentication_screens/resetpassword.dart';
import 'package:gam/All_Screens/Authentication_screens/signup.dart';
import 'package:gam/All_Screens/Constants/app_assets.dart';
import 'package:gam/All_Screens/Constants/custom_listtile.dart';
import 'package:gam/All_Screens/Constants/custom_textfield.dart';
import 'package:gam/All_Screens/main_screens/profile.dart';

class InboxConversation extends StatefulWidget {
  @override
  _InboxConversationState createState() => _InboxConversationState();
}

class _InboxConversationState extends State<InboxConversation> {

  AppColors appassets = new AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(10.0)),
        backgroundColor: Colors.white,
        elevation: 1.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.navigate_before,
            size: 35,
          ),
          color: Colors.black,
        ),
        title: Row(
          children: <Widget>[
            Image(image: AssetImage('images/daria_img.png'), height: 40,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Daria',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Playfair_Display',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 2,),
                Text(
                  'Vue la dernière fois à 13:02',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'Playfair_Display',
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
      ),
      body:Column(
        children: <Widget>[
          Expanded(
            flex:7,
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20,),
              child: ListView(
                children: <Widget>[
                  senderMessage(context),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: receiverMessage(context),
                  ),
                  SizedBox(height: 8,),
                  senderMessage(context),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: receiverMessage(context),
                  ),
                  SizedBox(height: 8,),
                  senderMessage(context),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: receiverMessage(context),
                  ),
                  SizedBox(height: 8,),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: AppColors.themecolor,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(
                          Icons.insert_emoticon,
                          color: Colors.white,
                        ),
                        onTap: (){},
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            border: InputBorder.none, hintText: 'Tapez le message ici...',
                            hintStyle: TextStyle(fontSize: 16.0, color: Colors.white, fontFamily: "Playfair_Display"),
                          ),
                          onSubmitted: (String vehicle){},
                        ),
                      ),

                      GestureDetector(
                        child: Icon(Icons.send, color: Colors.white,),
                        onTap: (){},
                      ),

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

  Row receiverMessage(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(
              top: 15,
              bottom: 15
          ),
          height: MediaQuery.of(context).size.width * 0.25,
          child: Text(
            "Hey! Je vais bien. Et pour sûr! Quand le veux-tu et s'il vous plaît dites-moi vos besoins.",
            style: TextStyle(
                fontFamily: 'Playfair_Display',
                fontSize: 14,
                color: Colors.black),
          ),
          decoration: BoxDecoration(
              color: Color.fromRGBO(242, 242, 243, 1),
              borderRadius: BorderRadius.all(Radius.circular(6))),
        ),
        SizedBox(width: 10,),
        Container(
          child: CircleAvatar(
            backgroundImage: AssetImage('images/lic_user_image.png'),
          ),
        ),
      ],
    );
  }

  Row senderMessage(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: CircleAvatar(
            backgroundImage: AssetImage('images/daria_img.png'),
          ),
        ),
        SizedBox(width: 10,),
        Container(

          width: MediaQuery.of(context).size.width * 0.65,
          padding: EdgeInsets.all(12),
          height: MediaQuery.of(context).size.width * 0.25,
          child: Text(
            "Hey! Comment ça va? Je regarde pour une voiture d'assurance neuve marque et modèle.",
            style: TextStyle(
                fontFamily: 'Playfair_Display',
                fontSize: 14,
                color: Colors.white),
          ),
          decoration: BoxDecoration(
            color: AppColors.themecolor,
            borderRadius: BorderRadius.only(bottomLeft:  const  Radius.circular(10.0),
              bottomRight: const  Radius.circular(10.0),
              topRight: const Radius.circular(10),
            ),
          ),
        ),

      ],
    );
  }
}
