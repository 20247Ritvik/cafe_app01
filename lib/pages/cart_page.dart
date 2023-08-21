import 'package:cafe_app01/models/drink.dart';
import 'package:cafe_app01/models/shopmodel.dart';
import 'package:cafe_app01/pages/drinktile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Drink drink) {
    Provider.of<BubbleTeaShop>(context, listen: false).removeFromCart(drink);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "Your Cart",
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Maven Pro",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50.0,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: value.cart.length,
                    itemBuilder: (context, index) {
                      Drink drink = value.cart[index];
                      return DrinkTile(
                          drink: drink,
                          onTap: () => removeFromCart(drink),
                          trailing: const Icon(Icons.delete));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
