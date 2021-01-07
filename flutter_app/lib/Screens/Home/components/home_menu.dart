import 'package:flutter/material.dart';
import 'file:///C:/Users/jdupenor/AndroidStudioProjects/flutter_app/lib/Screens/Home/components/Cards/card_screen.dart';
import 'package:flutter_app/Screens/Home/components/home_screen.dart';
import 'package:flutter_app/Screens/Home/components/send_screen.dart';
import 'package:flutter_app/constants.dart';

class HomeMenu extends StatefulWidget {
  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  var screens = [
        HomeScreen(),
        CardScreen()

  ];   // Screens for each tab

  int selectedTab=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(125,35,35,1),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
               title:Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              title:Text("Cards")
          ),
        ],
        onTap: (index){
          setState(() {
            selectedTab = index;
          });
        },
        showUnselectedLabels: true,
        iconSize: 30,
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          elevation: 0,
          child: Icon(Icons.add),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selectedTab],
    );

  }
}

