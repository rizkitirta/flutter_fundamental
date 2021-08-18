import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent {to_amber, to_blue}

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  @override
  get initialState => Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.blue;
    yield _color;
  }
  
}