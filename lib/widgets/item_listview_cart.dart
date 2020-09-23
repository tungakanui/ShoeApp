import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class ItemListViewCart extends StatelessWidget {
  final Color color;
  final int quantity;
  final String id;
  final String title;
  final double price;
  final String imgUrl;

  ItemListViewCart(
      {@required this.id,
      @required this.quantity,
      @required this.color,
      @required this.title,
      @required this.price,
      @required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Container(
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
                        color: color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  bottom: -5,
                  child: Transform.rotate(
                    angle: 0.2,
                    child: Image(
                      image: NetworkImage(imgUrl),
                      height: 150,
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
                  title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$$price',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.pink[100],
                        ),
                        child: Icon(Icons.exposure_neg_1),
                      ),
                      onTap: () {
                        cart.minusOne(id, quantity);
                      },
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(
                        '$quantity',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.yellow[100],
                        ),
                        child: Icon(Icons.plus_one),
                      ),
                      onTap: () {
                        cart.addItem(id, price, imgUrl, title, color);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
