import 'package:flutter/material.dart';
import 'package:login_api/bottom_nav_screen.dart';
import 'package:login_api/checkbox_screen.dart';
import 'package:login_api/radio_screen.dart';
import 'package:login_api/snakbar_screen.dart';
import 'package:login_api/tabbar_screen.dart';

import 'intractive_viewer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("W I D G E T"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CheckBoxScreen(),));
          }, child: Text("CheckBox")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => RadioScreen(),));

          }, child: Text("RadioButton")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => TabBarScreen(),));

          }, child: Text("TabBar")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavScreen(),));

          }, child: Text("Bottom Navigation Bar")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SnakBarScreen(),));

          }, child: Text("Snack Bar")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => InteractiveViewerScreen(),));

          }, child: Text("Interactive Viewer")),
        ],
      ),
    );
  }
}
