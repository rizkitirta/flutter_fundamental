import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fitur Text Field"),
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    autocorrect: false,
                    //autofocus: true,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
