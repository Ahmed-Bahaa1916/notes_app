import 'package:flutter/material.dart';
import 'package:notes_app/constents.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLine = 1,
    this.onSaved,
  });

  final String hint;
  final int maxLine;
  final FormFieldSetter<String>? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        return null;
      },
      cursorColor: KPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: KPrimaryColor,
          fontSize: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
