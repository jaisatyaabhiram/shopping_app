import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context).cart;
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartitem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cartitem['imageUrl'].toString()),
              radius: 30,
            ),
            title: Text(
              cartitem['title'].toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text("size ${cartitem['size'].toString()}"),
            trailing: IconButton(
              onPressed: () {
                Provider.of<CartProvider>(
                  context,
                  listen: false,
                ).removeProduct(cartitem);
              },
              icon: Icon(Icons.delete),
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
