import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 45),
      child: Column(
        children: [
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 18,
          ),
          CustomTextField(
            hint: 'Content',
            maxLine: 5,
          ),
          SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
