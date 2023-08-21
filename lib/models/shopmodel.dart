import 'package:flutter/cupertino.dart';

import 'drink.dart';

class BubbleTeaShop extends ChangeNotifier {
  final List<Drink> _shop = [
    Drink(name: "ChocoTaco", price: "4.99", image: "images/bubbletea.png"),
    Drink(name: "Bubble Tea", price: "5.99", image: "images/bubble_tea2.png"),
    Drink(name: "Choco Shake", price: "7.99", image: "images/bubble_tea3.png"),
    Drink(name: "Cocktail", price: "10.00", image: "images/cocktail.png"),
    Drink(name: "Ice Tea", price: "9.99", image: "images/ice-tea.png"),
    Drink(name: "Iced Coffee", price: "3.99", image: "images/iced-coffee.png"),
    Drink(name: "MilkShake", price: "5.99", image: "images/milkshake.png"),
    Drink(name: "Soda", price: "2.99", image: "images/soda.png"),
    Drink(name: "Aero Spritz", price: "15.99", image: "images/aperol-spritz.png"),
  ];

  // List of Drinks
  final List<Drink> _userCart = [];

  List<Drink> get shop => _shop;
  List<Drink> get cart => _userCart;

  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners(); // this reflect the Widgets
  }

  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
