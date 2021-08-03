import 'package:flutter/cupertino.dart';

class Product {
  @required
  String judul;
  @required
  String imageURL;
  @required
  int harga;
  String deskripsi;

  Product(this.imageURL,this.judul, this.harga, this.deskripsi);
}
