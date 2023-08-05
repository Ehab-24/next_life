import 'package:flutter/material.dart';
import 'package:next_life/screens/personal_information/components/double_text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';

class LivingSituation extends StatelessWidget {
  const LivingSituation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          children: [
            DoubleText(
              title1: "Housing",
              text1: "Edit Housing",
              title2: "transportation",
              text2: "Edit Transportation",
            ),
            Divider(height: 40),
            DoubleText(
              title1: "Dependents",
              text1: "Edit dependents",
              title2: "Address",
              text2: "Edit address",
            ),
            Divider(height: 40),
            DoubleText(
              title1: "Pets",
              text1: "Edit pets",
              title2: "Internet Speed",
              text2: "Edit internet speed",
            ),
            Divider(height: 40),
            DoubleText(
              title1: "Hobbies",
              text1: "Edit hobbies",
              title2: "Sleep Schedule",
              text2: "Edit sleep schedule",
            ),
            Divider(height: 40),
            SizedBox(
              width: 172,
              child: MElevatedButton(text: "Save", onPressed: () {}),
            )
          ],
        ),
      )),
    );
  }
}
