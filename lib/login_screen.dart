import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailcon=TextEditingController();
  TextEditingController passwordcon=TextEditingController();

  login(String email,password) async{
    try{

      Response response = await post(Uri.parse("https://reqres.in/api/login"),
        body: {
          'email' : email,
          'password' : password
        }
      );

      if(response.statusCode==200){
        var data= jsonDecode(response.body.toString());
        print(data['token']);
        print("Login Successfully!");
      }else{
        print("Failed!");
      }

    }catch(e){
      print(e.toString());
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign In"),),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailcon,
              decoration: InputDecoration(
                labelText: "Email",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Colors.blue
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Colors.deepOrange
                  )
                )
              ),
            ),

            SizedBox(height: 20,),

            TextField(
              controller: passwordcon,
              decoration: InputDecoration(
                  labelText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                        color: Colors.blue
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Colors.deepOrange
                      )
                  )
              ),
            ),

            SizedBox(height: 40,),

            ElevatedButton(onPressed: (){

              login(emailcon.text.toString(),passwordcon.text.toString());

            }, child: Text("Sign In")),
          ],
        ),
      ),
    );
  }
}
