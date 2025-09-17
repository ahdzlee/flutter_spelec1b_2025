import 'package:flutter/material.dart';

class ProductThumbnail extends StatelessWidget {
  const ProductThumbnail({super.key, this.icon});

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      width: 124,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F8FC),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      child: Icon(
        icon ?? Icons.shopping_bag_outlined,
        size: 42,
        color: const Color(0xFF1F3242),
      ),
    );
  }
}
