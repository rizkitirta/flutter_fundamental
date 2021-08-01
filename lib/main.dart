import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Fake Data
  final List<Map<String, dynamic>> myList = [
    {
      "name": "Rizki Tirta",
      "age": 19,
      "favColors": [
        "blue",
        "white",
        "red",
        "blue",
        "white",
        "red",
        "blue",
        "white",
        "red",
        "red",
        "blue",
        "white",
        "red"
      ]
    },
    {
      "name": "M. Arif Fadilah",
      "age": 16,
      "favColors": ["white", "blue", "red", "red", "blue", "white", "red"]
    },
    {
      "name": "Meilin Rizkiana",
      "age": 24,
      "favColors": ["blue", "white", "red", "red", "blue", "white", "red"]
    },
    {
      "name": "Nurma Rindiasti",
      "age": 26,
      "favColors": ["blue", "white", "red", "red", "blue", "white", "red"]
    },
    {
      "name": "Tirta",
      "age": 19,
      "favColors": ["blue", "white", "red", "red", "blue", "white", "red"]
    },
    {
      "name": "Nurma Rindiasti",
      "age": 26,
      "favColors": ["blue", "white", "red", "red", "blue", "white", "red"]
    },
    {
      "name": "Tirta",
      "age": 19,
      "favColors": ["blue", "white", "red", "red", "blue", "white", "red"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mapping List"),
        ),
        body: ListView(
          children: myList.map((data) {
            List favColors = data['favColors'];

            return Card(
              margin: EdgeInsets.all(15),
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['name']}"),
                            Text("Age: ${data['age']}"),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: favColors.map((color) {
                          return Container(
                            color: Colors.black.withOpacity(0.1),
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            padding: EdgeInsets.all(5),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
