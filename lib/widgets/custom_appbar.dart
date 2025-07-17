import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), 
        CustomSearchIcon(),
      ],
    );
  }
}
