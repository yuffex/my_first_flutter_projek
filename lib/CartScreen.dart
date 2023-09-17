import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Cart.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Корзина'),
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (ctx, index) {
          final item = cart.items[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
            leading: Image.asset(item.image),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                cart.clearCart();
              },
              child: Text('Очистить'),
            ),
            ElevatedButton(
              onPressed: () {
                // Здесь добавьте логику для оплаты
              },
              child: Text('К оплате'),
            ),
          ],
        ),
      ),
    );
  }
}
