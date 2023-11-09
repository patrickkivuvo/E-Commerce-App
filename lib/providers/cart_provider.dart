import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CartProvider extends ChangeNotifier {
  final _cartBox = Hive.box('cart_box');

  List<dynamic> _ids = [];
  List<dynamic> _cart = [];


  List<dynamic> get ids => _ids;

  set ids(List<dynamic> newIds) {
    _ids = newIds;
    notifyListeners();
  }

 List<dynamic> get cart => _cart;

  set cart(List<dynamic> newCart) {
    _cart = newCart;
    notifyListeners();
  }

  getCats() {
    final catData = _cartBox.keys.map((key) {
      final item = _cartBox.get(key);

      return {
        "key": key,
        "id": item['id'],
      };
    }).toList();

    _cart = catData.toList();
    _ids = _cart.map((item) => item['id']).toList();
  }
}
