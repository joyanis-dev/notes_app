import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_buttom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(labelText: 'Title'),
            SizedBox(height: 10),
            CustomTextField(labelText: 'Content', maxLines: 5),
            SizedBox(height: 60),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
