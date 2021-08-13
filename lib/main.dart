import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  // const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  Future<Map<String, dynamic>> ambildata() async {
    try {
      var response = await http.get(Uri.parse("https://reqres.in/api/users/2"));

      if (response.statusCode >= 200 && response.statusCode < 300) {
        var data = jsonDecode(response.body)["data"] as Map<String, dynamic>;
        // print(data);
        return data;
      } else {
        throw (response.statusCode);
      }
    } catch (err) {
      throw (err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Future Builder"),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            ambildata();
          }),
      body: FutureBuilder(
        future: ambildata(),
        builder: (context, snapshot) {
          print(snapshot);
          if (snapshot.error != null) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${snapshot.data["name"]}",
                  style: TextStyle(fontSize: 35),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
