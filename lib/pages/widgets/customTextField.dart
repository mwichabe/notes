import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String formLabel;
  final bool obscureText;
  const CustomTextField({super.key, required this.formLabel, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration:  InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Colors.grey
          )
        ),
        label: Text(formLabel),
      ),
    );
  }
}
