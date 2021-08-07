import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/carts.dart';
import 'package:flutter_application_1/screens/cart_screen.dart';
import 'package:flutter_application_1/widgets/badge.dart';
import 'package:flutter_application_1/widgets/productGrid.dart';
import 'package:provider/provider.dart';

import '../providers/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          Consumer<Cart>(
            builder: (context, value, child) => Badge(child: child, value: value.jumlah.toString()),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          ),
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
