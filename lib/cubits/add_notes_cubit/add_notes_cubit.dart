import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_states.dart';
import 'package:note_app/models/note_model.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(Note note) async {
    emit(AddNotesLoading());
    try {
      final notesBox = Hive.box<Note>('notes');
      emit(AddNotesSuccess());
      await notesBox.add(note);
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
