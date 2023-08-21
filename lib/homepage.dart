import 'package:cafe_app01/pages/cart_page.dart';
import 'package:cafe_app01/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'components/bottom_nav_items.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int newindex) {
    setState(() {
      _selectedIndex = newindex;
    });
  }

  final List<Widget> _pages=[
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
