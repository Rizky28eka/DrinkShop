import 'package:flutter/material.dart';

import 'drink.dart';

class DrinkShop extends ChangeNotifier {
  // coffe for sale list
  final List<Drink> _shop = [
    // Drink 1
    Drink(
      name: 'name',
      price: 'price',
      imagePath: 'lib/images/drink1.png',
    ),

    // Drink 1
    Drink(
      name: 'name',
      price: 'price',
      imagePath: 'lib/images/drink2.png',
    ),

    // Drink 1
    Drink(
      name: 'name',
      price: 'price',
      imagePath: 'lib/images/drink1.png',
    ),

    // Drink 1
    Drink(
      name: 'name',
      price: 'price',
      imagePath: 'lib/images/drink1.png',
    ),
  ];

  // user cart
  List<Drink> _userCart = [];

  // get drink list
  List<Drink> get drinkShop => _shop;

  // get user cart
  List<Drink> get userCart => _shop;

  // add item to cart
  void addItemToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
