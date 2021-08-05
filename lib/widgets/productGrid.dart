
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/providers/products.dart';
import 'package:flutter_application_1/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
final dataProducts = Provider.of<Products>(context);
final allProducts = dataProducts.allProducts;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allProducts.length,
      itemBuilder: (ctx, i) => ProductItem(
        allProducts[i].id,
        allProducts[i].title,
        allProducts[i].imageUrl,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
