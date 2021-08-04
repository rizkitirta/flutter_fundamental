import 'dart:io';

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
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppBar = AppBar(
      title: Text("Cuppertino"),
    );

    final tinggiBody = tinggi - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
        appBar: myAppBar,
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Platform.isIOS
                          ? CupertinoAlertDialog(
                              title: Text("Are you sure?"),
                              content: Text("Ini Akan Menghapus Data Anda"),
                              actions: [
                                TextButton(
                                    onPressed: () {}, child: Text("Yes")),
                                TextButton(onPressed: () {}, child: Text("No")),
                              ],
                            )
                          : AlertDialog(
                              title: Text("Are you sure?"),
                              content: Text("Ini Akan Menghapus Data Anda"),
                              actions: [
                                TextButton(
                                    onPressed: () {}, child: Text("Yes")),
                                TextButton(onPressed: () {}, child: Text("No")),
                              ],
                            );
                    });
              },
              child: Text("Alert Dialog")),
        ));
  }
}
