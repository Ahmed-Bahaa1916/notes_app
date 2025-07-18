import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_from_state.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteFormState(),
      ),
    );
  }
}
