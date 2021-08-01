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
                    showCursor: true,
                    //cursorColor: Colors.yellow,
                    // cursorWidth: 5,
                    // cursorHeight: 25,
                    // cursorRadius: Radius.circular(20),

                    textAlign: TextAlign.start,
                    textCapitalization: TextCapitalization.none,

                    //style: TextStyle(color: Colors.red, fontSize: 20),

                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          size: 35,
                        ),
                        border: OutlineInputBorder(),
                        // prefixIcon: Icon(
                        //   Icons.person_add,
                        //   size: 35,
                        // ),
                        //prefixText: "Name :",
                        hintText: "Please input in here..",
                        labelText: "Username"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    showCursor: true,
                    textAlign: TextAlign.start,
                    textCapitalization: TextCapitalization.none,
                    obscureText: true,

                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        size: 35,
                      ),
                      border: OutlineInputBorder(),
                      // prefixIcon: Icon(
                      //   Icons.person_add,
                      //   size: 35,
                      // ),
                      //prefixText: "Name :",
                      hintText: "Please input in here..",
                      labelText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {} ,
                      )
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
