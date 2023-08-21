import 'package:cafe_app01/models/drink.dart';
import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  final Drink drink;
  void Function()? onTap;
  final Widget? trailing;

  DrinkTile({Key? key, required this.drink, required this.onTap, required this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Card(
          color: Colors.brown[200],
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ListTile(
            title: Text(drink.name),
            subtitle: Text(drink.price),
            leading: Image.asset(drink.image),
            trailing: trailing,
          ),
        ),
      ),
    );
  }
}