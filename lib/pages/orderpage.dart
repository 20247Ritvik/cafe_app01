import 'package:cafe_app01/models/shopmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({Key? key, required this.drink}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double  sweetValue = 0.5;

  void customizeSweeet(double newvalue) {
    setState(() {
      sweetValue = newvalue;
    });
  }

  double IceValue = 0.5;

  void customizeIce(double newvalue) {
    setState(() {
      IceValue = newvalue;
    });
  }

  double pearlsValue = 0.5;

  void customizePearls(double newvalue) {
    setState(() {
      pearlsValue = newvalue;
    });
  }

  void addToCart() {
    Provider.of<BubbleTeaShop>(context, listen: false).addToCart(widget.drink);
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Item Successfully added to cart"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.drink.name),
      ),
      backgroundColor: Colors.brown[100],
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Image.asset(widget.drink.image),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 100,
                        child: Text(
                          "Sweet",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: "Maven Pro",
                              fontWeight: FontWeight.w500),
                        )),
                    Slider(
                        activeColor: Colors.white,
                        value: sweetValue,
                        label: sweetValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeSweeet(value))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 100,
                        child: Text(
                          "Ice",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: "Maven Pro",
                              fontWeight: FontWeight.w500),
                        )),
                    Slider(
                        activeColor: Colors.white,
                        value: IceValue,
                        label: IceValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeIce(value))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 100,
                        child: Text(
                          "Pearls",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: "Maven Pro",
                              fontWeight: FontWeight.w500),
                        )),
                    Slider(
                        activeColor: Colors.white,
                        value: pearlsValue,
                        label: pearlsValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizePearls(value))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: addToCart,
            color: Colors.brown.shade800,
            child: SizedBox(
              width: 150,
              height: 50,
              child: Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontFamily: "Maven Pro",
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
