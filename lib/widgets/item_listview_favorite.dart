import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/cart.dart';

class ItemListViewFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Consumer<Product>(
      builder: (ctx, productData, _) => Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    child: Transform.rotate(
                      angle: 0.17,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          color: productData.color,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    bottom: 0,
                    child: Transform.rotate(
                      angle: -0.45,
                      child: Image(
                        image: NetworkImage(productData.imgUrls[0]),
                        height: 180,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productData.title,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$${productData.price}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.pink[100],
                          ),
                          child: Text('Add to cart'),
                        ),
                        onTap: () {
                          cart.addItem(
                            productData.id,
                            productData.price,
                            productData.imgUrls[0],
                            productData.title,
                            productData.color,
                          );
                          Scaffold.of(context).hideCurrentSnackBar();
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Added to cart!'),
                            duration: Duration(seconds: 1),
                          ));
                        },
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.yellow[100],
                        ),
                        child: Text('Buy now'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
