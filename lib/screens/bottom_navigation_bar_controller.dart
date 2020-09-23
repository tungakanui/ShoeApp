import 'package:flutter/material.dart';

import './favorite_page.dart';
import './home_page.dart';
import './cart_page.dart';

class BottomNavigationBarController extends StatefulWidget {
  static const routeName = '/bottom_navigation_bar_controller';
  @override
  _BottomNavigationBarControllerState createState() =>
      _BottomNavigationBarControllerState();
}

class _BottomNavigationBarControllerState
    extends State<BottomNavigationBarController> {

  final List<Widget> _pages = [
    HomePage(
      key: PageStorageKey('HomePage')
    ),
    CartPage(
      key: PageStorageKey('CartPage')
    ),
    FavoritePage(
      key: PageStorageKey('FavoritePage')
    ),

  ];

  int _selectedIndex = 0;

  final PageStorageBucket bucket = PageStorageBucket();

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: _pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}
