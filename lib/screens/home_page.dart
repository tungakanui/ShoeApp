import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/products.dart';

import '../constants.dart';
import '../widgets/item_listview_more.dart';
import '../widgets/item_pageview.dart';
import '../widgets/brands_listview.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/home_page";

  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);

    final products = productData.nikeItems;

    PageController _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.85,
    );

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'Discover',
          style: kTitleTextStyle,
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
          ),
          IconButton(
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: BrandsListView(),
          ),
          Expanded(
            flex: 4,
            child: PageView.builder(
              controller: _pageController,
              itemCount: products.length,
              itemBuilder: (BuildContext ctx, int idx) {
                return ChangeNotifierProvider.value(
                  value: products[idx],
                  child: ItemPageView(),
                );
              },
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'More',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext ctx, int idx) {
                return ItemListViewMore();
              },
            ),
          ),
        ],
      ),
    );
  }
}
