import 'package:flutter/material.dart';

class FrostedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FrostedAppBar({super.key, required this.title, this.onCartPressed});

  final String title;
  final VoidCallback? onCartPressed;

  static const EdgeInsets _outerPadding = EdgeInsets.fromLTRB(12, 8, 12, 8);
  static const double _topSpacer = 64;
  static const int _backgroundAlpha = 60;

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + _topSpacer + _outerPadding.vertical);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: _topSpacer),
        Padding(
          padding: _outerPadding,
          child: Material(
            elevation: 8,
            shadowColor: Colors.black26,
            borderRadius: BorderRadius.circular(16),
            clipBehavior: Clip.antiAlias,
            color: Colors.transparent,
            child: Container(
              height: kToolbarHeight,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              color: Colors.white.withAlpha(_backgroundAlpha),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0C1B33),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      tooltip: 'Cart',
                      onPressed: onCartPressed,
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Color(0xFF0C1B33),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
