import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    const radius = 24.0;
    final theme = Theme.of(context);
    final cream = const Color(0xFFF2F0E6);
    final navy = const Color(0xFF16384B);

    return Card(
      elevation: 6,
      color: cream,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top image with rounded top corners
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(radius),
              topRight: Radius.circular(radius),
            ),
            child: Image.asset(
              'assets/roasted_chicken.jpeg',
              fit: BoxFit.cover,
            ),
          ),

          // Lemon Herb Roasted Chicken Text
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 24),
            child: Text(
              'Lemon Herb Roasted Chicken',
              style: theme.textTheme.headlineLarge?.copyWith(
                color: navy,
                fontWeight: FontWeight.w800,
                height: 1.15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
