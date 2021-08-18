
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/color_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBloc>(
        child: MainPage(),
        builder: (context) => ColorBloc(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {
              bloc.dispatch(ColorEvent.to_amber);
            },
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              bloc.dispatch(ColorEvent.to_blue);
            },
          ),
        ],
      ),
      appBar: AppBar(title: Text("Bloc")),
      body: BlocBuilder<ColorBloc, Color>(
        builder: (context, newColor) => AnimatedContainer(
            width: 100,
            height: 100,
            color: newColor,
            duration: Duration(milliseconds: 500)),
      ),
    );
  }
}
