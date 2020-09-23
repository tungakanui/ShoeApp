import 'package:flutter/material.dart';

class BrandsListView extends StatelessWidget {
  final _brands = ['Adidas', 'Nike', 'Jordan', 'Puma', 'New Balance'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: _brands.length,
        itemBuilder: (BuildContext ctx, int idx) {
          return Container(
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 10.0,
            ),
            child: Text(
              _brands[idx],
              style: TextStyle(fontSize: 24.0),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
