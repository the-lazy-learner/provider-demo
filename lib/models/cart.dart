import 'package:flutter/material.dart';

import 'catalog.dart';

class CartModel extends ChangeNotifier {
  CatalogModel _catalog;
  final List<int> _ids = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel modified) {
    assert(modified != null);
    assert(_ids.every((id) => modified.getById(id) != null));
    _catalog = modified;
    notifyListeners();
  }

  List<Item> get items => _ids.map((id) => _catalog.getById(id)).toList();

  int get total => items.fold(0, (total, item) => total + item.price);

  void add(Item item) {
    _ids.add(item.id);
    notifyListeners();
  }
}