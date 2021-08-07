import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/carts.dart';
import 'package:flutter_application_1/providers/products.dart';
import 'package:flutter_application_1/screens/cart_screen.dart';
import 'package:flutter_application_1/widgets/badge.dart';
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
    final cart = Provider.of<Cart>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
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
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Image.network(
              "${product.imageUrl}",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: Text("${product.title}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15),
                    //padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: Text("Rp ${product.price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.3),
                child: OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content:
                              Text("${product.title} Berhasil ditambahakan")));
                      cart.addCart(product.id, product.title, product.price);
                    },
                    child: Text("Add To Cart")),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("${product.description}",
                  style: TextStyle(fontSize: 15)),
            ),
          )
        ],
      ),
    );
  }
}
        
        // SizedBox(height: 15),
        // Text("${product.price}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        // SizedBox(height: 15),
        // Text("${product.description}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),