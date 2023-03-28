import 'package:drinkshop/components/button_nav_bar.dart';
import 'package:flutter/material.dart';
import '../const.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate buttom bar
  int _selectedIndex = 0;
  void navigateButtomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages
  final List<Widget> _pages = [
    // ShopPage
    ShopPage(),

    // CartPage
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MybuttonNavbar(
        onTabChange: (index) => navigateButtomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
