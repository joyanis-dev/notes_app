import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData? leadingIcon;
  const CustomAppBar({super.key, required this.title, this.leadingIcon});

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
        CustomIcon(
          iconData: leadingIcon ?? Icons.search,
          onPressed: () {
            // Handle search action
          },
        ),
      ],
    );
  }
}
