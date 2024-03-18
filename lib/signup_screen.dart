import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({Key? key}) : super(key: key);

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  void login(String email,password) async{
    try{
      Response response = await post(Uri.parse("https://reqres.in/api/register"),
        body: {
          'email' : email,
          'password' : password
        }
      );

      if(response.statusCode==200){

        var data = jsonDecode(response.body.toString());
        print(data['token']);

        print("account created successfully");
      }else{
        print("failed");
      }

    }catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up API"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(15),
                  ),
                  borderSide: BorderSide(
                    color: Colors.deepOrange
                  )
                ),
                hintText: 'hello@gmail.com'
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: "Password",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide(
                          color: Colors.deepOrange
                      )
                  ),
              ),
            ),

            SizedBox(height: 30,),

            GestureDetector(
              onTap: (){
                login(emailController.text.toString(),passwordController.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text('Sign Up',style: TextStyle(color: Colors.white),)),
              ),
            )


          ],
        ),
      ),
    );
  }
}
