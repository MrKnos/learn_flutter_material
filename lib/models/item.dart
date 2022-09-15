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
  final bool isFavorite;

  Item copyWith({
    String? id,
    Color? color,
    String? name,
    bool? isFavorite,
  }) {
    return Item(
      id: id ?? this.id,
      color: color ?? this.color,
      name: name ?? this.name,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
