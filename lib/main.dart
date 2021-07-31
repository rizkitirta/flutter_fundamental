import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.amber
  ];

  final List<Widget> myList = List.generate(
      20,
      (index) => Text(
            "${index + 1}",
            style: TextStyle(fontSize: 30 + double.parse(index.toString())),
          ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        // body: ListView.separated(
        //   separatorBuilder: (context, index) {
        //     //return Container(height: 20,);
        //     return Divider(
        //       color: Colors.black,
        //       height: 60,
        //     );
        //   },
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     // return Container(
        //     //   height: 300,
        //     //   width: 300,
        //     //   color: myColor[index],
        //     // );

        //     return Text("Hallo");
        //   },
        // )
        body: ListView(
          children: myList,
        ),
      ),
    );
  }
}
