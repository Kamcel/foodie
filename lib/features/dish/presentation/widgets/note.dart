import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  final String note;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  const Note({super.key, required this.note, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    controller?.text = note;
    return SizedBox(
      width: double.infinity,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        maxLines: null,
        decoration: InputDecoration(
            filled: false,
            hintText: 'E.g. No onions, extra sauce, super spicy'),
      ),
    );
  }
}
