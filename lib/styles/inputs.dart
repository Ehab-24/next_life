import 'package:flutter/material.dart';

class InputStyles {
  static textInput(String text) {
    return InputDecoration(
      labelText: text,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
