import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _allProducts = List.generate(
    25,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );

  List<Product> get allProducts {
    return [..._allProducts]; // ... => spread collection
  }

  Product findById(productId){
    return _allProducts.firstWhere((prodId) => prodId.id == productId);
  }

  // void addProduct(value) {
  //   _allProducts.add(value);
  //   notifyListeners();
  // }
}