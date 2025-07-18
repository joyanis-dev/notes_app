import 'package:flutter/material.dart';
import 'package:note_app/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final int maxLines;
  final void Function(String?)? onSaved;
  const CustomTextField({
    super.key,
    required this.labelText,
    this.maxLines = 1,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $labelText';
        }
        return null;
      },
      onSaved: onSaved,
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
