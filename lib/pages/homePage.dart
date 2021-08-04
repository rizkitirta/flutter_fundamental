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
        appBar: AppBar(
          title: Text("Flexible & Expanded"),
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 300,
            color: Colors.blue,
            child: FittedBox(
              alignment: Alignment.topLeft,
              child: Image.network("https://picsum.photos/500/500"),
              fit: BoxFit.cover, // fill,contain
            ),
          ),
        ));
  }
}
