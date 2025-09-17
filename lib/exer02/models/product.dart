import 'package:flutter/material.dart';

class Product {
  /// The product title
  final String title;

  /// The product price
  final double price;

  /// The product rating
  /// 0-5, supports halves like 4.5
  final double rating;

  /// The product tags
  final List<String> tags;

  /// The product icon
  final IconData? icon;

  const Product({
    required this.title,
    required this.price,
    required this.rating,
    required this.tags,
    this.icon,
  });
}
