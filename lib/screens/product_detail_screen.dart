
import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProductDetailScreen(this.title, this.price);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context).settings.arguments as String; // is the id!
    // ...

    final product = Provider.of<Products>(context).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(children: [
        Container(
          height: 250,
          width: double.infinity,
          child: Image.network(
            "${product.imageUrl}",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        Text("${product.title}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        SizedBox(height: 15),
        Text("${product.description}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
      ],),
    );
  }
}
