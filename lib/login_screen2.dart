import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {

  // double screenWidth = MediaQuery.of(context).size.width;
  // double screenHeight = MediaQuery.of(context).size.height;

  TextEditingController emailcon = TextEditingController();
  TextEditingController passwordcon = TextEditingController();

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
        print("Successfully!");
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
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
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
                  ),
                ),

              ),
            ),

            SizedBox(height: 10,),

            TextField(
              controller: passwordcon,
              decoration: InputDecoration(
                labelText: "Password",
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
                  ),
                ),

              ),
            ),

            SizedBox(height: 30,),

            SizedBox(
              width: 100,
              child: ElevatedButton(onPressed: (){

                login(emailcon.text.toString(),passwordcon.text.toString());
                
              }, child: Text("Sign In")),
            )

          ],
        ),
      ),
    );
  }
}
