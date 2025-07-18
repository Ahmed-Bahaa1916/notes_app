import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

import 'add_note_bottom_sheet.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: NotesListView(),
      ),
    );
  }
}
