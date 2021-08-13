import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/page1.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    Key key,
    @required this.counter,
  }) : super(key: key);

  final int counter;

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "${widget.counter}",
            style: TextStyle(fontSize: 35),
          ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: () => Navigator.pushReplacementNamed(context, Page1.routeName), child: Text("Go To Page"))
      ],
    );
  }
}
