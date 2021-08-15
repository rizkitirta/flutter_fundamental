import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/add_product.dart';
import 'package:flutter_application_1/provider/products.dart';
import 'package:flutter_application_1/widget/product_item.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    var products = Provider.of<Products>(context, listen: false);
    var allProducts = products.allProducts;

    return Scaffold(
        appBar: AppBar(
          title: Text("Key"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AddProductPage.routeName);
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: (allProducts.length == null)
            ? Center(
                child: Text(
                  "Not Found Data",
                  style: TextStyle(fontSize: 30),
                ),
              )
            : ListView.builder(
                itemCount: allProducts.length,
                itemBuilder: (context, i) {
                  return ProductItem(allProducts[i].id, allProducts[i].title,
                      allProducts[i].date);
                }));
  }
}
