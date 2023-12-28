import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {

  final IconData icon;
  final Function()? onPressed;

  const CustomIconButton({
    super.key, required this.icon, required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 46.0,
        width: 46.0,
        decoration: BoxDecoration(
          color: Color(0XFFE8B2A6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: IconButton(onPressed: onPressed, icon: Icon(icon, color: Colors.white, size: 20.0,)));
  }
}
