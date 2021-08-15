import 'package:flutter/cupertino.dart';

class SingleColor with ChangeNotifier {
  String id, title;
  bool status;

  SingleColor({@required this.id,@required this.title, this.status = false});

  void toggleStatus() {
    this.status = !this.status;
    notifyListeners();
  }
}