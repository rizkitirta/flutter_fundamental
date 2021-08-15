import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter/material.dart';

class Products extends ChangeNotifier {
  List<Product> _data = [];

  List<Product> get allProducts => _data;

  void addProduct(String title, DateTime date){

    var product = Product(DateTime.now().toString(), title, date);

      _data.add(product);
      notifyListeners();

      print(_data);
  }

  void deleteProduct(String id){
    _data.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}