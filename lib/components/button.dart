import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String buttonText;
  final Function()? onTap;

  const Button({
    super.key, required this.buttonText, required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: Color(0XFFE8B2A6),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}