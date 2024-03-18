import 'package:flutter/material.dart';
import 'package:login_api/login_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text("T A B B A R"),),
        body: Column(
          children: [
            TabBar(
                tabs:[

                  Tab(
                    icon: Icon(Icons.home,color: Colors.blue,),
                  ),
                  Tab(
                    icon: Icon(Icons.account_circle,color: Colors.blue,),
                  ),
                  Tab(
                    icon: Icon(Icons.settings,color: Colors.blue,),
                  ),
                ]
            ),

            Expanded(
              child: TabBarView(
                  children: [
                    Container(
                      color: Colors.deepOrange.shade400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Home",style: TextStyle(fontSize: 22,color: Colors.blue),),
                          // Text("Home",style: TextStyle(fontSize: 22,color: Colors.black),),
                          // Text("Home",style: TextStyle(fontSize: 22,color: Colors.blue),),
                          // Text("Home",style: TextStyle(fontSize: 22,color: Colors.black),),
                        ],
                      ),
                    ),

                    //and direct screen calling like
                    LoginScreen(),
                    
              
                    Container(
                      color: Colors.green.shade400,
                      child: Center(child: Text("Settings",style: TextStyle(fontSize: 22,color: Colors.white),)),
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
