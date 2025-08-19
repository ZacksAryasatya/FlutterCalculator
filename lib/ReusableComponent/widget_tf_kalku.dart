import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldKalku extends StatelessWidget {
  final TextEditingController textEditingController;
  final String labelText;

  const TextFieldKalku({
    super.key,
    required this.textEditingController,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly], 
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), 
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey), 
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue, width: 2), 
        ),
      ),
    );
  }
}
