import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

import '../models/products.dart';

import '../widgets/item_listview_favorite.dart';

class FavoritePage extends StatelessWidget {
  static const routeName = "/favorite_page";

  const FavoritePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);

    final data = productData.favoriteItems;

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
                    'Liked',
                    style: kTitleTextStyle,
                  ),
                  Text(
                    'Total ${data.length} items',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext ctx, int idx) {
                    return ChangeNotifierProvider.value(
                      value: data[idx],
                      child: ItemListViewFavorite(),
                    );
                  },
                  scrollDirection: Axis.vertical,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
