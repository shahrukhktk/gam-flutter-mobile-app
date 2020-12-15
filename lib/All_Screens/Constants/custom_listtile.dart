import 'package:flutter/material.dart';
import 'package:gam/All_Screens/main_screens/inbox_conversation_screen.dart';
import 'app_assets.dart';

class DariaList extends StatelessWidget {

  final String title, subtitle;

  const DariaList({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final daria = ListTile(
        leading: Image(
          image: AssetImage('images/daria_img.png'),
        ),
        title: Text('$title',
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w600, fontFamily: 'Playfair_Display'
          ),
        ),
        subtitle: Text('$subtitle', style: TextStyle(fontSize: 14.0, fontFamily: 'Playfair_Display'
        ),),
        trailing:
        GestureDetector(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => InboxConversation()),);
            },child: Image(image: AssetImage('images/go_btn.png'))),

      );

    return daria;
    }
}

class JavierList extends StatelessWidget {

  final String title, subtitle;

  const JavierList({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final javier = ListTile(
      leading: Image(
        image: AssetImage('images/javier_img.png'),
      ),
      title: Text('$title',
        style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w600, fontFamily: 'Playfair_Display'
        ),
      ),
      subtitle: Text('$subtitle', style: TextStyle(fontSize: 14.0, fontFamily: 'Playfair_Display'
      ),),
      trailing:
      GestureDetector(
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => InboxConversation()),);
          },child: Image(image: AssetImage('images/go_btn.png'))),

    );

    return javier;
  }
}

class AlexList extends StatelessWidget {

  final String title, subtitle;

  const AlexList({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final alex = ListTile(
      leading: Image(
        image: AssetImage('images/alex_img.png'),
      ),
      title: Text('$title',
        style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w600, fontFamily: 'Playfair_Display'
        ),
      ),
      subtitle: Text('$subtitle', style: TextStyle(fontSize: 14.0, fontFamily: 'Playfair_Display'
      ),),
      trailing:
      GestureDetector(
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => InboxConversation()),);
          },child: Image(image: AssetImage('images/go_btn.png'))),

    );

    return alex;

  }
}
