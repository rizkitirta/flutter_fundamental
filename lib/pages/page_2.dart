import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        //leading: Container(),
      ),
      body: Center(
        child: Text(
          "Halaman dua",
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_left),
          onPressed: () => Navigator.of(context).pop()),
    );
  }
}
