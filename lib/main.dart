import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/bottom_navigation_bar_controller.dart';
import './screens/cart_page.dart';
import './screens/home_page.dart';
import './screens/favorite_page.dart';

import './models/products.dart';
import './models/cart.dart';
import './models/orders.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => Orders(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: BottomNavigationBarController.routeName,
        routes: {
          BottomNavigationBarController.routeName: (ctx) => BottomNavigationBarController(),
          HomePage.routeName: (ctx) => HomePage(),
          FavoritePage.routeName: (ctx) => FavoritePage(),
          CartPage.routeName: (ctx) => CartPage(),
        },
      ),
    );
  }
}
