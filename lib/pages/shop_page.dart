import 'package:drinkshop/models/drink.dart';
import 'package:drinkshop/models/drink_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/drink_title.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add Drink To cart
  void addTocart(Drink drink) {
    // add to cart
    Provider.of<DrinkShop>(context, listen: false).addItemToCart(drink);

    // let user know it add been successfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully added to cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DrinkShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            // Heading message
            Text(
              "How Would You like your drink ? ",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 24),

            // List of coffe to buy
            Expanded(
              child: ListView.builder(
                  itemCount: value.drinkShop.length,
                  itemBuilder: (context, index) {
                    // get individual drink
                    Drink eachDrink = value.drinkShop[index];

                    // return the tile for this drink
                    return DrinkTitle(
                      drink: eachDrink,
                      icon: Icon(Icons.add),
                      onPressed: () => addTocart(eachDrink),
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
