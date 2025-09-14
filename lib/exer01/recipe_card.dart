import 'package:flutter/material.dart';

import 'bullet_item.dart';
import 'info_pill.dart';

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lemon Herb Roasted Chicken',
                  style: theme.textTheme.headlineLarge?.copyWith(
                    color: navy,
                    fontWeight: FontWeight.w800,
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 16),

                // Info grid (2 columns)
                GridView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3.5,
                  ),
                  children: const [
                    InfoPill(icon: Icons.timer, label: 'Prep: 15 min'),
                    InfoPill(
                      icon: Icons.restaurant_menu,
                      label: 'Difficulty: Easy',
                    ),
                    InfoPill(icon: Icons.star, label: 'Cook: 45 min'),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  'Ingredients',
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: navy,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 10),
                const BulletItem(text: '1 whole chicken'),
                const BulletItem(text: 'lemons'),
                const BulletItem(text: 'lemons'),
                const BulletItem(text: 'Fresh rosemary'),
                const BulletItem(text: 'Resiple cormarn'),
                const BulletItem(text: 'Pelite 1 ont Chicken'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
