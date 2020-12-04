import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String buttonText;
  final Color color;
  final Color textColor;
  final Color borderColor;

  CustomButton({
    @required this.onPressed,
    @required this.buttonText,
    this.color,
    this.textColor,
    this.borderColor,
});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Color(0xFF373F51),
      textColor: Colors.white,
      padding: const EdgeInsets.all(14),
      child: Text(buttonText),
    );
  }
}
