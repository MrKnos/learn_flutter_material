import 'package:flutter/material.dart';

class Item {
  Item({
    required this.id,
    required this.color,
    required this.name,
    this.isFavorite = false,
  });

  final String id;
  final Color color;
  final String name;
  bool isFavorite;
}
