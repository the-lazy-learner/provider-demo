import 'package:flutter/material.dart';

class CatalogModel {
  static const _items = [
    'Code Smell',
    'Control Flow',
    'Interpreter',
    'Recursion',
    'Sprint',
    'Heisenbug',
    'Spaghetti',
    'Hydra Code',
    'Off-By-One',
    'Scope',
    'Callback',
    'Closure',
    'Automata',
    'Bit Shift',
    'Currying',
  ];

  Item getById(int id) => Item(id, _items[id]);
}

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 42;
  Item(this.id, this.name)
    : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  bool operator ==(Object object) => object is Item && object.id == id;
}
