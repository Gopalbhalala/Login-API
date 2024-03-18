import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxScreen> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxScreen> {

  bool Selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBox"),),

      body: Column(
        children: [
          Row(
            children: [
              Checkbox(value: Selected,
                  onChanged: (value){
                setState(() {
                  Selected = value!;
                });
                  }),
              SizedBox(width: 10,),
              Text("Music"),
            ],
          ),
          Row(
            children: [
              Checkbox(value: Selected, onChanged: (value){
                    setState(() {
                      Selected = value!;
                    });
                  }),
              SizedBox(width: 10,),
              Text("Travelling"),
            ],
          )
        ],
      ),
    );
  }
}
