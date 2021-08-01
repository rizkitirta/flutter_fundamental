import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTabs = [
    Tab(
      text: "Tab 1",
      icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      icon: Icon(Icons.ac_unit_rounded),
    ),
    Tab(
      text: "Tab 3",
    ),
    Tab(
      icon: Icon(Icons.file_copy),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.purple,
              indicatorWeight: 5,
              //custom indicator
              indicator: BoxDecoration(
                  color: Colors.greenAccent.withOpacity(0.2),
                  //borderRadius: BorderRadius.circular(50),
                  border: Border(
                      bottom: BorderSide(color: Colors.greenAccent, width: 5))),
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Page Tab 1"),
              ),
              Center(
                child: Text("Page Tab 2"),
              ),
              Center(
                child: Text("Page Tab 3"),
              ),
              Center(
                child: Text("Page Tab 4"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
