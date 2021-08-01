import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  final List<Container> myList = List.generate(90, (index) {
    return Container(
      // height: 50,
      // width: 150,
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256)),
    );
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Grid View")),
        // body: GridView(
        //   padding: EdgeInsets.all(30),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 10,
        //     mainAxisSpacing: 10,
        //     childAspectRatio: 3/4,
        //   ),
        //   children: myList,
        // ),
        body: GridView.count(
          crossAxisCount: 3,
          children: myList,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(15),
          childAspectRatio: 3 / 4,
        ),
      ),
    );
  }
}
