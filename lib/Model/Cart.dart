// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lerant/Model/Item.dart';

class Cart with ChangeNotifier {
  List<Item> _item = [];
  double price = 0.0;
  void add(Item item) {
    _item.add(item);
    price += item.Price!.toDouble();
    notifyListeners();
  }

  void remove(Item item) {
    _item.remove(item);
    price -= item.Price!.toDouble();
    notifyListeners();
  }

  int get countItem {
    return _item.length;
  }

  double get totalPrise {
    return price;
  }
  List<Item> get basketItem{
    return _item;
  }
}
