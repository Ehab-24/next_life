import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/buttons/inputs/text_fields.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

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
                Text("Current Password", style: TextStyles.md),
                Space.h20,
                MTextFormField(labelText: "******"),
                Divider(height: 40),
                Text("New Password", style: TextStyles.md),
                Space.h20,
                MTextFormField(labelText: "Password"),
                Space.h20,
                MTextFormField(labelText: "Confirm Password"),
                Space.h40,
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
