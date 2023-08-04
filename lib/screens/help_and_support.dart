import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';

class HelpAndSupportPage extends StatelessWidget {
  const HelpAndSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text("Help and Support", style: TextStyles.md),
            ),
            Space.h20,
            MElevatedButton(
              text: "Privacy Policy",
              onPressed: () {},
            ),
            Space.h20,
            MElevatedButton(
              text: "Terms and conditions",
              onPressed: () {},
            ),
            Space.h20,
            MElevatedButton(
              text: "Discord",
              onPressed: () {},
            ),
            Space.h20,
            MElevatedButton(
              text: "Contact us",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
