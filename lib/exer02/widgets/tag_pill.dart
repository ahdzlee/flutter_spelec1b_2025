import 'package:flutter/material.dart';

class TagPill extends StatelessWidget {
  const TagPill({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: ShapeDecoration(
        color: const Color(0xFFE6F0FA),
        shape: StadiumBorder(
          side: BorderSide(color: const Color(0xFFBFD9F2).withAlpha(60)),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (tag.toLowerCase().contains('bluetooth')) ...[
            const Icon(Icons.bluetooth, size: 16, color: Color(0xFF2D76C5)),
            const SizedBox(width: 6),
          ],
          Text(
            tag,
            style: const TextStyle(
              color: Color(0xFF28527A),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
