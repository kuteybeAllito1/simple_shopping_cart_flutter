import 'package:flutter/material.dart';
import 'package:lerant/Checkout.dart';
import 'package:lerant/Model/Cart.dart';
import 'package:lerant/Model/Item.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> item = [
    Item(name: "pc", Price: 270),
    Item(name: "s24 ultra", Price: 300),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
          actions: [
            Row(
              children: [
                IconButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                          return CheckOut();
                        }));
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 33, left: 1),
                  child: Consumer<Cart>(
                    builder: (context, cart, child) {
                      return Text("${cart.price}");
                    },
                  ),
                ),
              ],
            )
          ],
        ),
        body: Consumer<Cart>(builder: (context, cart, child) {
          return ListView.builder(
            itemBuilder: (context, i) {
              return Card(
                child: ListTile(
                  title: Text("${item[i].name}"),
                  trailing: IconButton(
                      onPressed: () {
                        cart..add(item[i]);
                      },
                      icon: Icon(Icons.add_shopping_cart)),
                ),
              );
            },
            itemCount: item.length,
          );
        }));
  }
}
