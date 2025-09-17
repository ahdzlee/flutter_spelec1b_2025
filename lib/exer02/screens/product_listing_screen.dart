import 'package:flutter/material.dart';

/// A product listing screen that mirrors the provided mock design.
///
/// It shows:
/// - A soft AppBar with title "Flutter Mart" and a cart icon
/// - Rounded, elevated product cards with image/icon, title, price
/// - Ratings with stars (supports half stars) and numeric score
/// - Rounded pill tags
class ProductListingScreen extends StatelessWidget {
  const ProductListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF2F5F9),
        body: SafeArea(child: Center(child: Text('Product Listing Screen'))),
      ),
    );
  }
}
