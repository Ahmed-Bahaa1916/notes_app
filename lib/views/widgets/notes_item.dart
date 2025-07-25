import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edite_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNoteView();
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 12),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Build Your Career With Ahmed Bahaa',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                'May21, 2025',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
