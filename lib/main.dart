import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            color: Colors.greenAccent,
          ),
          title: Text("App Bar"),
          centerTitle: false,
          actions: [
            Container(
              width: 50,
              color: Colors.yellow,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              width: 30,
              height: 30,
              color: Colors.red,
            ),
          ),
          flexibleSpace: Container(
            height: 30,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
