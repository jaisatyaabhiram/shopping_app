import 'package:flutter/material.dart';
import 'package:shop_app_flutter/global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
              icon: Icon(Icons.delete),
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
