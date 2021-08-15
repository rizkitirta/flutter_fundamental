import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/add_product.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/provider/products.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  // const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Products>(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          HomePage.routeName: (ctx) => HomePage(),
          AddProductPage.routeName: (ctx) => AddProductPage(),
        },
      ),
    );
  }
}