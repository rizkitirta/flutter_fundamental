import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/products.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatefulWidget {
  // const ProductItem({ Key? key }) : super(key: key);
  ProductItem(this.prodId, this.title, this.date);

  final String prodId, title;
  final DateTime date;

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  Color bgColor;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    List<Color> randomColor = [
      Colors.amber,
      Colors.black,
      Colors.green,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.purple,
      Colors.orange,
    ];

    bgColor = randomColor[Random().nextInt(randomColor.length)];
  }

  @override
  Widget build(BuildContext context) {
   Provider.of<Products>(context, listen: false);

    return ListTile(
      leading: CircleAvatar(backgroundColor: bgColor,),
      title: Text("${widget.title}"),
      subtitle: Text(DateFormat.yMMMEd().format(widget.date)),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        color: Colors.red,
        onPressed: () {},
      ),
    );
  }
}
