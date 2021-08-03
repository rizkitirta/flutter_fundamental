import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/Product.dart';

class HomePage extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dataProduct = List.generate(100, (index) {
      return Product(
          "https://picsum.photos/id/$index/200",
          faker.food.restaurant(),
          10000 + Random().nextInt(100000),
          faker.lorem.sentence());
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(dataProduct[index].imageURL),
            footer: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(dataProduct[index].judul, style: TextStyle(fontWeight: FontWeight.bold),maxLines: 1,),
                    Text("Rp ${dataProduct[index].harga}"),
                    Text(dataProduct[index].deskripsi, style: TextStyle(color: Colors.white),maxLines: 2,)
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: dataProduct.length,
      ),
    );
  }
}
