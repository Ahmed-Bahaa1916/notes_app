import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_notes_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check_box,
              size: 30,
            ),
          ),
        ],
        title: const Text(
          'Edit Notes',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: const EditNoteViewBody(),
    );
  }
}
