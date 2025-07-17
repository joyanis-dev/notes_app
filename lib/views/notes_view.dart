import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(  
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: () {
          // Action for the floating action button
        },
        child: const Icon(Icons.add),
      ),
      body: NotesViewBody(),
    
    );
  }
}

