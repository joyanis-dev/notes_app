import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_states.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  Future<void> addNote(String title, String content) async {
    emit(AddNotesLoading());
    try {
    
      await Future.delayed(const Duration(seconds: 1));
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}