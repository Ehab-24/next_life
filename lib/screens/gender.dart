import 'package:flutter/material.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/inputs/text_form_field.dart';

import '../constants/spacing.dart';

class GenderPage extends StatelessWidget {
  const GenderPage({super.key});

  void _save() {
    // implement save logic
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                Text(
                  "Current gender",
                  style: TextStyles.md,
                ),
                Space.h40,
                // TODO: change to a selector dialog
                MTextFormField(labelText: "Gender"),
                Divider(height: 80),
                FractionallySizedBox(
                  widthFactor: 1.0,
                  child: MElevatedButton(text: "Save", onPressed: _save),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
