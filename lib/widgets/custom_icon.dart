import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconData;
  final VoidCallback? onPressed;
  const CustomIcon({super.key, required this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(
          alpha: 0.05, // Adjust the alpha value for transparency
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        
        icon: Icon(iconData, color: Colors.white, size: 24),
        onPressed: onPressed,
      ),
    );
  }
}