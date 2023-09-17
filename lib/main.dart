import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Cart.dart';
import 'CartScreen.dart';
import 'MenuItem.dart';
import 'MenuScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Магазин пиццы',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuScreen(),
    );
  }
}
// class MyApp extends StatelessWidget {
//   final List<MenuItem> menuItems = [
//     MenuItem(name: 'Пицца 1', image: 'assets/pizza1.jpg', price: 10.99),
//     MenuItem(name: 'Пицца 2', image: 'assets/pizza2.jpg', price: 12.99),
//     // Добавьте остальные элементы меню здесь
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Магазин блюд'),
//           actions: [
//             IconButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (ctx) => CartScreen(),
//                   ),
//                 );
//               },
//               icon: Icon(Icons.shopping_cart),
//             ),
//           ],
//         ),
//         body: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // Отображать 2 элемента в строке
//           ),
//           itemCount: menuItems.length,
//           itemBuilder: (context, index) {
//             final menuItem = menuItems[index];
//             return Card(
//               margin: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Image.asset(
//                     menuItem.image,
//                     height: 120,
//                     width: 120,
//                     fit: BoxFit.cover,
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     menuItem.name,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '\$${menuItem.price.toStringAsFixed(2)}',
//                         style: TextStyle(
//                           fontSize: 16,
//                         ),
//                       ),
//                       SizedBox(width: 8),
//                       ElevatedButton(
//                         onPressed: () {
//                           Provider.of<Cart>(context, listen: false)
//                               .addToCart(menuItem);
//                         },
//                         child: Text('В корзину'),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
