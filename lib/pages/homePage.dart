import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppBar = AppBar(
      title: Text("Flexible & Expanded"),
    );

    final tinggiBody = tinggi - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
        appBar: myAppBar,
        body: Container(
          height: tinggiBody * 0.5,
          width: lebar,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              myContainer(lebar),
              myContainer(lebar),
              myContainer(lebar),
            ],
          ),
        ));
  }
}

class myContainer extends StatelessWidget {
  final double lebarApp;
  myContainer(this.lebarApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      return Container(
        width: lebarApp * 0.25,
        height: constrain.maxHeight * 0.2,
        color: Colors.amber,
      );
    });
  }
}
