import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  // const Page1({ Key? key }) : super(key: key);
static const routeName = "/page1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Page1"),),);
  }
}