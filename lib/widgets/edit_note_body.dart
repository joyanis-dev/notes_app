import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditeNoteBody extends StatelessWidget {
  const EditeNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edit Note', leadingIcon: Icons.check),
          SizedBox(height: 20),
          CustomTextField(labelText: 'Title'),
          SizedBox(height: 20),
          CustomTextField(labelText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
