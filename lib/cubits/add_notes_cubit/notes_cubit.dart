import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constents.dart';
import 'package:notes_app/models/note_model.dart';

import 'notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesCubit> {
  AddNotesCubit() : super(AddNotesInitial() as AddNotesCubit);

  addNote(NoteModel note) async {
    emit(AddNoteLoading() as AddNotesCubit);
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess() as AddNotesCubit);
      await notesBox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString())
    }
  }
}
