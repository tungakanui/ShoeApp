import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String brand;
  final String title;
  final String description;
  final Color color;
  final double price;
  final List<String> imgUrls;
  final String type;
  bool isFavorite = false;

  Product(
      {@required this.id,
      @required this.title,
      @required this.brand,
      @required this.description,
      @required this.imgUrls,
      @required this.color,
      @required this.price,
      @required this.type});

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
