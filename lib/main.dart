import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Rizki Tirta"),
              subtitle: Text(
                "This is subtitel aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("10.00 PM"),
              tileColor: Colors.greenAccent,
              dense: false,
              contentPadding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 40,
              ),
              // onTap: () {
              //   return ;
              // },
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text("Rizki Tirta"),
              subtitle: Text("This is subtitel"),
              leading: CircleAvatar(),
              trailing: Text("10.00 PM"),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text("Rizki Tirta"),
              subtitle: Text("This is subtitel"),
              leading: CircleAvatar(),
              trailing: Text("10.00 PM"),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text("Rizki Tirta"),
              subtitle: Text("This is subtitel"),
              leading: CircleAvatar(),
              trailing: Text("10.00 PM"),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text("Rizki Tirta"),
              subtitle: Text("This is subtitel"),
              leading: CircleAvatar(),
              trailing: Text("10.00 PM"),
            ),
            Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
