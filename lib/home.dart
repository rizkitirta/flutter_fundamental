import 'package:flutter/material.dart';

class myHomePage extends StatefulWidget {
  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  String data = "Belum Ada Input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog")),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 35),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () {
          print("After click");
          showDialog(
              context: context,
              builder: (contex) {
                return AlertDialog(
                  title: Text("Apakah anda yakin?"),
                  content: Text("Ini akan mengahapus data secara permanen!"),
                  actions: [
                    // ElevatedButton(onPressed: () {}, child: Text("YES")),
                    // ElevatedButton(onPressed: () {}, child: Text("NO"))
                    TextButton(
                        onPressed: () {
                          print("Click Yes");
                          Navigator.of(context).pop(true);
                          setState(() {
                            data = "TRUE";
                          });
                        },
                        child: Text("Yes")),
                    TextButton(
                        onPressed: () => [
                              print("Click No"),
                              Navigator.of(context).pop(false),
                              setState(() {
                                data = "FALSE";
                              })
                            ],
                        child: Text("No")),
                  ],
                );
              }).then((value) => print(value));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
