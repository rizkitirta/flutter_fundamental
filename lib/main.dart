import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homePage.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
          // brightness: Brightness.dark,
          // visualDensity: VisualDensity.comfortable,
          // primaryColor: Colors.amber,
          //primarySwatch: Colors.amber,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.amber)),
          appBarTheme: AppBarTheme(
              color: Colors.green,
              textTheme: TextTheme(
                  headline1: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35)))),
    );
  }
}
