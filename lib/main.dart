import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget Image"),
        ),
        body: Center(
          child: Container(
            width:300,
            height: 400,
            color: Colors.blueAccent,
            child: Image.asset("images/Screenshot_1.png", fit: BoxFit.cover,),
            // child: Image(
            //   fit: BoxFit.cover,
            //   image: AssetImage("images/Screenshot_1.png"),
            //   //image: NetworkImage("https://picsum.photos/200/300"),
            //   ),
          ),
        ),
      ),
    );
  }
}
