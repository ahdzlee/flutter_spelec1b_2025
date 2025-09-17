import 'package:flutter/material.dart';
import 'product.dart';

const kSampleProducts = <Product>[
  Product(
    title: 'Wireless Headphones',
    price: 59.99,
    rating: 4.5,
    tags: ['Audio', 'Bluetooth'],
    icon: Icons.headphones,
  ),
  Product(
    title: 'Smartwatch X',
    price: 129.99,
    rating: 4.0,
    tags: ['Wearable', 'GPS'],
    icon: Icons.watch,
  ),
  Product(
    title: 'Espresso Machine',
    price: 99.99,
    rating: 5.0,
    tags: ['Coffee', 'Kitchen'],
    icon: Icons.coffee_maker,
  ),
];
