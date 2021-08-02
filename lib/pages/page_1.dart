import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page_2.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: Text(
          "Halaman satu",
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
