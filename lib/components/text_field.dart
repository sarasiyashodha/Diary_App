import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final void Function(String)? onChanged;

  const MyTextField({
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Color(0XFFF6F8FB),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
            color: Color(0XFFB3B1B0),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 14.0),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
