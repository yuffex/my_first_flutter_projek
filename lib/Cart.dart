import 'package:flutter/foundation.dart';

import 'MenuItem.dart';


class Cart extends ChangeNotifier {
  final List<MenuItem> _items = [];

  List<MenuItem> get items => _items;

  void addToCart(MenuItem item) {
    _items.add(item);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
