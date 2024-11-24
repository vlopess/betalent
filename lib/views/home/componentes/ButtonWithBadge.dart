
import 'package:flutter/material.dart';
import 'package:mobile/utils/AppColors.dart';

class ButtonWithBadge extends StatelessWidget {
  final String name;
  final String? badgeText;
  final VoidCallback onPressed;

  const ButtonWithBadge({
    required this.name,
    this.badgeText,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Image.asset(name, height: 50),
        ),
        if (badgeText != null && badgeText!.isNotEmpty)
          Positioned(
            right: 3,
            top: 3,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.bluePrimary,
                shape: BoxShape.circle,
              ),
              child: Text(
                badgeText!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}