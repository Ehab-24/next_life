import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';

import '../utils.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "This is a temporary screen for navigation",
              style: TextStyles.md,
            ),
            Space.h20,
            MElevatedButton(
              text: "Test Screen",
              onPressed: () => pushScreen(context, '/test'),
            ),
            Space.h20,
            MElevatedButton(
              text: "Home Screen",
              onPressed: () => pushScreen(context, '/home'),
            ),
          ],
        ),
      ),
    );
  }
}
