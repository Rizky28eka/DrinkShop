import 'package:flutter/material.dart';
import '../models/drink.dart';

class DrinkTitle extends StatelessWidget {
  final Drink drink;
  void Function()? onPressed;
  final Widget icon;
  DrinkTitle({
    super.key,
    required this.drink,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(drink.name),
        subtitle: Text(drink.price),
        leading: Image.asset(drink.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
