import 'package:flutter/material.dart';
import 'package:note_app/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final int maxLines;
  const CustomTextField({
    super.key,
    required this.labelText,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color:kPrimaryColor),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }
}
