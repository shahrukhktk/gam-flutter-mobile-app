import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gam/All_Screens/Constants/app_assets.dart';
import 'package:gam/All_Screens/main_screens/addvehicle.dart';
import 'package:gam/All_Screens/main_screens/chatlist.dart';
import 'package:gam/All_Screens/main_screens/profile.dart';
import 'home_screen.dart';

class MainDashboardScreen extends StatefulWidget {
  @override
  _MainDashboardScreenState createState() => _MainDashboardScreenState();
}

class _MainDashboardScreenState extends State<MainDashboardScreen> {

  int _pageIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    final List<Widget> _bottomNavChilds = [
      HomeScreen(),
      AddNewVehicle(),
      ChatList(),
      ProfileScreen(),
    ];

    //BottomNavigationBar
    CurvedNavigationBar bottomNav = new CurvedNavigationBar(key: _bottomNavigationKey,
      index: 0,
      height: 60.0,
      items: <Widget>[
        Icon(Icons.home, size: 30, color: Colors.white,),
        Icon(Icons.add, size: 30,  color: Colors.white,),
        Icon(Icons.mark_chat_unread_outlined, size: 25,  color: Colors.white,),
        Icon(Icons.person_outline, size: 30,  color: Colors.white,),
      ],
      color: AppColors.themecolor,
      buttonBackgroundColor: AppColors.themecolor,
      backgroundColor: Colors.white,
      animationCurve: Curves.easeInBack,
      animationDuration: Duration(milliseconds: 600),
      onTap: (index) {
        setState(() {
          _pageIndex = index;
        });
      },
    );

    return Scaffold(
      bottomNavigationBar: bottomNav,
      body: _bottomNavChilds[_pageIndex],
    );
  }
}