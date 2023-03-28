import 'package:drinkshop/models/drink_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/drink_title.dart';
import '../models/drink.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // remove item from cart
  void removeFromCart(Drink drink) {
    Provider.of<DrinkShop>(context, listen: false).removeItemFromCart(drink);
  }

  // pay button tapped
  void payNow() {
    /*
    
    fill out your payment service here

     */
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<DrinkShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // Heading
              const Text(
                'You Cart',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 24),
              // List of cart items
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    // get individuals cart items
                    Drink eachDrink = value.userCart[index];

                    // return drink tile
                    return DrinkTitle(
                      drink: eachDrink,
                      onPressed: () => removeFromCart(eachDrink),
                      icon: const Icon(Icons.delete),
                    );
                  },
                ),
              ),

              // pay button
              GestureDetector(
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Pay Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
