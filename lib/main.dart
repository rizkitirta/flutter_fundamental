import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page_1.dart';
import 'package:flutter_application_1/pages/page_2.dart';
import 'package:flutter_application_1/pages/page_3.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageSatu(),
      initialRoute: PageSatu.routeName,
      routes: {
        PageSatu.routeName: (context) => PageSatu(),
        PageDua.routeName: (context) => PageDua(),
        PageTiga.routeName: (context) => PageTiga(),
      },
    );
  }
}
