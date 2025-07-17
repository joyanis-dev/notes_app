import 'package:flutter/material.dart';
import 'package:note_app/constants/app_textstyles.dart';
import 'package:note_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditNoteView()),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 10,
          top: 10,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffFFCC80),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: const Text('Note Title', style: AppTextStyles.heading),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  'Note Subtitle JIAJIDQWDJWNC9IWDEQK;LASKMWIEP KLKM-WI',
                  style: AppTextStyles.bodyText,
                ),
              ),
              trailing: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.delete, color: Colors.black, size: 30),
                onPressed: () {
                  // Handle delete action
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text('Note Content', style: AppTextStyles.bodyText),
            ),
          ],
        ),
      ),
    );
  }
}
