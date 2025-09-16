import 'package:flutter/material.dart';

class BulletItem extends StatelessWidget {
  const BulletItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(Icons.circle, size: 6, color: Colors.black54),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.black87, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
