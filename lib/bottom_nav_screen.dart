import 'package:flutter/material.dart';
import 'package:login_api/checkbox_screen.dart';
import 'package:login_api/login_screen.dart';
import 'package:login_api/radio_screen.dart';
import 'package:login_api/tabbar_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  int _selectedIndex = 0;

  void _navigationIndex(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _page =[
    // Center(child: Text("Home",style: TextStyle(fontSize: 22),)),
    // Center(child: Text("Search",style: TextStyle(fontSize: 22),)),
    // Center(child: Text("Notification",style: TextStyle(fontSize: 22),)),
    // Center(child: Text("Profile",style: TextStyle(fontSize: 22),)),
    TabBarScreen(),
    CheckBoxScreen(),
    RadioScreen(),
    LoginScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_page[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,  // more then 3 items
        currentIndex: _selectedIndex,
        onTap: _navigationIndex,
        items: [
          BottomNavigationBarItem (icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem (icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem (icon: Icon(Icons.notifications),label: "Notification"),
          BottomNavigationBarItem (icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}
