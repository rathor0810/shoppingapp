import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> cart = [];
  void addProduct(Map<String, dynamic> Product) {
    cart.add(Product);
    notifyListeners();
  }

  void removeProduct(Map<String, dynamic> Product) {
    cart.remove(Product);
    notifyListeners();
    
  }
}
