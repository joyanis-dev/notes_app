import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

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
        
        icon: Icon(Icons.search, color: Colors.white, size: 24),
        onPressed: () {
          // Handle search action
        },
      ),
    );
  }
}