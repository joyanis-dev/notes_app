import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: 'Edit Note',
          ),
        ],
      ),
    )
    );
  }
}