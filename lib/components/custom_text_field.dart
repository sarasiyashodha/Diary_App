import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData? icon;
  final FormFieldValidator<String>? validator;
  final void Function(String)? onChanged;

  const CustomTextField({
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.icon,
    required this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.0,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0), // Set your desired border radius
              borderSide: BorderSide(
                  color: Color(0XFFE5E4E3), // Set your desired border color
                  width: 1.0
              ),),
          fillColor: Color(0XFFFFFFFF),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              color: Color(0XFFBBBBBB),
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
              fontSize: 15.0),
            prefixIcon: icon != null ? Icon(icon, color: Color(0XFFAAAAAA), size: 24.0) : null,
          suffixIcon: Icon(Icons.cancel, color: Color(0XFFAAAAAA), size: 24.0)
        ),
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }
}
