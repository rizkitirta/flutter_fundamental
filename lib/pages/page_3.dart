import 'package:flutter/material.dart';

class PageTiga extends StatelessWidget {
  static const routeName = '/page_tiga';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
        //leading: Container(),
      ),
      body: Center(
        child: Text(
          "Halaman tiga",
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_left),
          onPressed: () => Navigator.of(context).pop()),
    );
  }
}
