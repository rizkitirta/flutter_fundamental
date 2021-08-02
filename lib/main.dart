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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.menu),
        title: Text("Home Drawer"),
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
                return PageSatu();
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Switch.adaptive(
                  value: status,
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.black,
                  //activeThumbImage: ,
                  onChanged: (value) {
                    setState(() {
                      status = !status;
                    });
                    print(status);
                  }),
            ),
            Text((status == true) ? "Switch On" : "Switch Off")
          ],
        ),
      ),
    );
  }
}
