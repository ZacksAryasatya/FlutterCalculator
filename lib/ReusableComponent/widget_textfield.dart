import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String labelText;
  final Decoration decoration;
  final InputDecoration inputDecoration;
  final TextEditingController textEditingController;
  final bool obscureText;

  const CustomTextField({super.key, 
  required this.text, 
  required this.textColor, 
  required this.fontSize, 
  required this.fontWeight, 
  
  required this.textEditingController, required this.labelText, required this.decoration, required this.inputDecoration, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: obscureText,
      // decoration: inputDecoration.copyWith(
      //   labelText: labelText,
      // ),
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      decoration: inputDecoration.copyWith(
        labelText: labelText,
      ),
    );
  }
}