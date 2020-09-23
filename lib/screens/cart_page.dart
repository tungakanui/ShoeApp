import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

import '../widgets/item_listview_cart.dart';

import '../models/cart.dart';

class CartPage extends StatelessWidget {
  static const routeName = '/CartPage';

  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Cart',
                    style: kTitleTextStyle,
                  ),
                  Text(
                    'Total ${cart.count} items',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: cart.count,
                  itemBuilder: (BuildContext ctx, int idx) {
                    return ItemListViewCart(
                      id: cart.items.values.toList()[idx].id,
                      price: cart.items.values.toList()[idx].price,
                      imgUrl: cart.items.values.toList()[idx].imgUrl,
                      color: cart.items.values.toList()[idx].color,
                      title: cart.items.values.toList()[idx].title,
                      quantity: cart.items.values.toList()[idx].quantity,
                    );
                  },
                  scrollDirection: Axis.vertical,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$${cart.totalAmount}',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Order Now',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
