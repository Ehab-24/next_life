import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/inputs/text_form_field.dart';
import 'package:next_life/widgets/highlighted_text.dart';

import '../styles/text.dart';

class UsernamePage extends StatelessWidget {
  const UsernamePage({super.key});

  final String username =
      "Rohan01"; //actual username should be fetched from database

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
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Current username", style: TextStyles.md),
                Space.h20,
                HighlightedtText(text: username),
                Divider(
                  height: 40,
                ),
                Text("New username", style: TextStyles.md),
                Space.h20,
                MTextFormField(labelText: ""),
                Divider(
                  height: 40,
                ),
                FractionallySizedBox(
                  widthFactor: 1.0,
                  child: MElevatedButton(text: "Save", onPressed: _save),
                ),
              ],
            ),
          ),
        ),
        Expanded(child: SizedBox.shrink())
      ],
    );
  }
}
