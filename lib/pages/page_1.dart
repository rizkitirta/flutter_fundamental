import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/page_2.dart';

class PageSatu extends StatelessWidget {
  static const routeName = '/page_satu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      drawer: Drawer(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(25),
            width: double.infinity,
            height: 120,
            color: Colors.blueAccent,
            alignment: Alignment.bottomLeft,
            child: Text(
              "Menu Drawer",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          SizedBox(height: 15),
          ListTile(
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomePage())),
            leading: Icon(
              Icons.home,
              size: 25,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) {
                return PageDua();
              }));
            },
            leading: Icon(
              Icons.settings,
              size: 25,
            ),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ]),
      ),
      body: Center(
        child: Text(
          "Halaman home",
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_right_alt),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => PageDua()))),
    );
  }
}
