import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Model/Cart.dart';
import 'Model/Item.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckOut"),
      ),
      body: ListView.builder(
          itemCount: cart.basketItem.length,
          itemBuilder: (context, i) {
            return Card(
              child: ListTile(
                title: Text(cart.basketItem[i].name!),
                trailing: IconButton(
                  onPressed: () {
                    cart.remove(cart.basketItem[i]);
                  },
                  icon: Icon(Icons.remove),
                ),
              ),
            );
          }),
    );
  }
}
