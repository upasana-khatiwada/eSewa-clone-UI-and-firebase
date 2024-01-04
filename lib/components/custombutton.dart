import 'package:flutter/material.dart';

import '../consts/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double fontSize = size.width * 0.04;
    double buttonWidth = size.width * 0.75;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF74D459),
        minimumSize: Size(buttonWidth, 50),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(12.0), 
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: whiteColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
