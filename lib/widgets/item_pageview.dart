import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';

class ItemPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return Stack(
      children: [
        Container(
          height: 400,
          width: 220,
          decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Positioned(
          top: 10,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.brand.toUpperCase(),
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 3),
                width: 180,
                child: Text(
                  product.title,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                ),
              ),
              Text(
                '\$${product.price}',
                style: TextStyle(
                  fontSize:22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: -30,
          left: 20,
          child: Transform.rotate(
            angle: -0.35,
            child: Image(
              height: 320,
              image: NetworkImage(product.imgUrls[0]),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 170,
          child: IconButton(
            icon: Icon(Icons.arrow_forward),
          ),
        ),
        Positioned(
          left: 170,
          child: Consumer<Product>(
            builder: (ctx, product, _) => IconButton(
              icon: product.isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
              color: Colors.white,
              onPressed: () {
                product.toggleFavoriteStatus();
                print(product.isFavorite);
              },
            ),
          ),
        ),
      ],
    );
  }
}
