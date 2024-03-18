import 'package:flutter/material.dart';

class SnakBarScreen extends StatefulWidget {
  const SnakBarScreen({Key? key}) : super(key: key);

  @override
  State<SnakBarScreen> createState() => _SnakBarScreenState();
}

class _SnakBarScreenState extends State<SnakBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Builder(builder: (context){
        return Center(
          child: ElevatedButton(onPressed: (){
            final message = SnackBar(content: Text("This is a SnackBar!"),
            backgroundColor: Colors.green,
              action: SnackBarAction(
                label: "Try Again!",
                onPressed: (){},
              ),
              shape: StadiumBorder(),
            );
            ScaffoldMessenger.of(context).showSnackBar(message);
          }, child: Text("SnackBar")),
        );
      }),
    );
  }
}
