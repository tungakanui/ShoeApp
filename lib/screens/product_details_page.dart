import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/cart.dart';

import '../constants.dart';

class ProductDetailsPage extends StatefulWidget {
  static const routeName = "/ProductDetailsPage";

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final _sizes = [36, 37, 38, 39, 40, 41, 42, 43];

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(
                child: Center(
                  child: Image(
                    image: NetworkImage(product.imgUrls[0]),
                  ),
                ),
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.imgUrls.length,
                  itemBuilder: (BuildContext ctx, int idx) => Image(
                    height: 100,
                    width: 200,
                    image: NetworkImage(product.imgUrls[idx]),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Icon(product.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                child: Text(
                  product.description,
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'MORE DETAILS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Size',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _sizes.length,
                  itemBuilder: (BuildContext ctx, int idx) => Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: 70,
                    child: Center(
                      child: Text(
                        _sizes[idx].toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onTap: () {
                  Provider.of<Cart>(context, listen: false).addItem(
                    product.id,
                    product.price,
                    product.imgUrls[0],
                    product.title,
                    product.color,
                  );
                  Scaffold.of(context).hideCurrentSnackBar();
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Added to cart'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
