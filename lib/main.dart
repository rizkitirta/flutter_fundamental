import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/carts.dart';
import 'package:flutter_application_1/providers/products.dart';
import 'package:flutter_application_1/screens/cart_screen.dart';
import 'package:flutter_application_1/screens/page1.dart';
import 'package:flutter_application_1/screens/page2.dart';
import 'package:flutter_application_1/widgets/counter_page.dart';
import 'package:provider/provider.dart';

import '../screens/products_overview_screen.dart';
import '../screens/product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Cart()),
        ChangeNotifierProvider(create: (context) => Products()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
          fontFamily: 'Lato',
        ),
        home: CountPage(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          Page1.routeName: (ctx) => Page1(),
          Page2.routeName: (ctx) => Page2(),

        },
      ),
    );
  }
}

class CountPage extends StatefulWidget {
  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Lifcycle"),
      ),
      body: CounterPage(counter: counter),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        
      ),
    );
  }
}

