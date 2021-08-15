import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/provider/color.dart';

class MultiColor with ChangeNotifier {
  List<SingleColor> _colors = [];

  List<SingleColor> get colors => _colors;

  void selectAll(bool nilai) {
    if (nilai) {
      _colors.forEach((element) {
        element.status = true;
      });
    } else {
      _colors.forEach((element) {
        element.status = false;
      });
    }

    notifyListeners();
  }

  checkAllStatus() {
    var hasil = _colors.every((element) => element.status = element.status);
    return hasil;
  }

  void addColor(String title) async {
    Uri url = Uri.parse(
        "https://flutter-crud-419ce-default-rtdb.firebaseio.com/colors.json");

    try {
      var responseData = await http.post(url,
          body: jsonEncode({
            "title": title,
            "status": false,
          }));

      if (responseData.statusCode >= 200 && responseData.statusCode < 300) {
        _colors.add(SingleColor(
            id: jsonDecode(responseData.body)["name"].toString(),
            title: title));
        notifyListeners();
      } else {
        throw (responseData.statusCode);
      }
    } catch (e) {
      throw (e);
    }
  }

  void deleteColor(String id) async {
    Uri url = Uri.parse(
        "https://flutter-crud-419ce-default-rtdb.firebaseio.com/colors/$id.json");

    try {
      var responseData = await http.delete(url);

      if (responseData.statusCode >= 200 && responseData.statusCode < 300) {
        _colors.removeWhere((element) => element.id == id);
        notifyListeners();
      } else {
        throw (responseData.statusCode);
      }
    } catch (e) {
      throw (e);
    }
  }

  void initialData() async {
    Uri url = Uri.parse(
        "https://flutter-crud-419ce-default-rtdb.firebaseio.com/colors.json");

    try {
      var responseData = await http.get(url);

      if (responseData.statusCode >= 200 && responseData.statusCode < 300) {
        var data = jsonDecode(responseData.body) as Map<String, dynamic>;
        
        data.forEach((key, value) {
          _colors.add(SingleColor(
            id: value["name"].toString(),
            title: value["title"],
            status: value["status"]));
        });
        notifyListeners();
      } else {
        throw (responseData.statusCode);
      }
    } catch (e) {
      throw (e);
    }
  }
}
