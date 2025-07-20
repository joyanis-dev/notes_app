import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/cubits/notes_cubit/notes_states.dart';
import 'package:note_app/models/note_model.dart';


class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<Note>? notes;

  void fetchNotes() {
   
      final notesBox = Hive.box<Note>('notes');
      notes = notesBox.values.toList();
   
  }
}