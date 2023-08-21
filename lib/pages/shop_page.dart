import 'package:cafe_app01/models/drink.dart';
import 'package:cafe_app01/models/shopmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'drinktile.dart';
import 'orderpage.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  goToOrderPage(Drink drink) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => OrderPage(
                  drink: drink,
                )));
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
                    "Midnight Drinks and Beverages",
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
                        itemCount: value.shop.length,
                        itemBuilder: (context, index) {
                          Drink indiVidualDrink = value.shop[index];
                          return DrinkTile(
                            drink: indiVidualDrink,
                            onTap: () => goToOrderPage(indiVidualDrink),
                            trailing: Icon(Icons.arrow_forward),
                          );
                        }),
                  ),
                ],
              ),
            )));
  }
}
