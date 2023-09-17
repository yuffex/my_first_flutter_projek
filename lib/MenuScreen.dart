import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Cart.dart';
import 'CartScreen.dart';
import 'MenuItem.dart';

class MenuScreen extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(name: 'Пицца 1', image: 'assets/pizza1.jpg', price: 10.99),
    MenuItem(name: 'Пицца 2', image: 'assets/pizza2.jpg', price: 12.99),
    // Добавьте остальные элементы меню здесь
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Меню'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => CartScreen(),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (ctx, index) {
          final item = menuItems[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
            leading: Image.asset(item.image),
            trailing: ElevatedButton(
              onPressed: () {
                Provider.of<Cart>(context, listen: false).addToCart(item);
              },
              child: Text('В корзину'),
            ),
          );
        },
      ),
    );
  }
}
