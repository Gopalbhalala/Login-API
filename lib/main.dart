import 'package:flutter/material.dart';
import 'package:login_api/home_screen.dart';
import 'package:login_api/login_screen.dart';
import 'package:login_api/login_screen2.dart';
import 'package:login_api/signup_screen.dart';

import 'checkbox_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen2(),
    );
  }
}