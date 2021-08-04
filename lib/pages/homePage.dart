import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flexible & Expanded"),),
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            color: Colors.green,
            child: Text("Teks 1 panjang...."),
          ),
          Container(
            height: 100,
            color: Colors.amber,
            child: Text("Teks 2 sedang"),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Text("Teks 3"),
            ),
          )
        ],
      ),
    );
  }
}