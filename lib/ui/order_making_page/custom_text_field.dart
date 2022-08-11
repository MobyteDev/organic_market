import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        style: const TextStyle(
          fontSize: 17,
        ),
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          fillColor: Colors.grey[200],
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
