import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/productGrid.dart';

import '../providers/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: ProductsGrid(),
    );
  }
}

