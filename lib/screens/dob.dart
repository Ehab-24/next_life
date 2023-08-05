import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/date_picker.dart';
import 'package:next_life/widgets/texts.dart';

class DOBPage extends StatelessWidget {
  const DOBPage({super.key});

  final String dateOfBirth =
      "01/03/2001"; // actual DOB should be fetched from database

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
              child: const Text("Date of birth"),
            ),
            Space.h20,
            HighlightedtText(text: dateOfBirth),
            Divider(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: const Text("Pick a new date"),
            ),
            Space.h20,
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 40,
                child: DatePicker(
                  text: "Select new date",
                  restorationId: 'main',
                ),
              ),
            ),
            Divider(
              height: 40,
            ),
            MElevatedButton(text: "Save", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
