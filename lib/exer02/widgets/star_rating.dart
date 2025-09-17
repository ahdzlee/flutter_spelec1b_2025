import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  const StarRating({super.key, required this.rating});

  /// The rating value, from 0 to 5
  final double rating;

  @override
  Widget build(BuildContext context) {
    const total = 5;
    final full = rating.floor();
    final frac = rating - full;
    final hasHalf = frac >= 0.25 && frac < 0.75;
    final roundsUp = frac >= 0.75;

    return Row(
      children: List.generate(total, (i) {
        final fullStars = full + (roundsUp ? 1 : 0);
        final isHalf = i == full && hasHalf && !roundsUp;
        final icon = i < fullStars
            ? Icons.star
            : isHalf
            ? Icons.star_half
            : Icons.star_border;
        return Icon(icon, size: 20, color: const Color(0xFFFFB400));
      }),
    );
  }
}
