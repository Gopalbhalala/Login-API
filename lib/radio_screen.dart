import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("RadioButton"),),
      body: Column(
        children: [

          Row(
            children: [
              Radio(value: "Male", groupValue: gender, onChanged: (value){
                setState(() {
                  gender=value.toString();
                  print(gender);
                });
              }),
              SizedBox(width: 10,),
              Text("Male"),
            ],
          ),

          Row(
            children: [
              Radio(value: "Female", groupValue: gender, onChanged: (value){
                setState(() {
                  gender=value.toString();
                  print(gender);
                });
              }),
              SizedBox(width: 10,),
              Text("Female"),
            ],
          ),

          Row(
            children: [
              Radio(value: "Others", groupValue: gender, onChanged: (value){
                setState(() {
                  gender=value.toString();
                  print(gender);
                });
              }),
              SizedBox(width: 10,),
              Text("Other"),
            ],
          ),


        ],
      ),
    );
  }
}
