import 'package:flutter/material.dart';

class InputStyles {
  static textInput(BuildContext context, String text) {
    return InputDecoration(
      labelText: text,
      labelStyle: TextStyle(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      filled: true,
      fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.08),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
