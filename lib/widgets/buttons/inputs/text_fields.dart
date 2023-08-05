import 'package:flutter/material.dart';

import '../../../styles/inputs.dart';

class MTextFormField extends StatelessWidget {
  final String labelText;

  const MTextFormField({
    required this.labelText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextFormField(
        // decoration: InputStyles.textInput(labelText),
        decoration: InputDecoration(
          labelText: labelText,
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
        ),
      ),
    );
  }
}
