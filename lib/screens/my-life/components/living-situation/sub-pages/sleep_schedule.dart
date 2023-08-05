import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/buttons/inputs/text_fields.dart';

class MyLifeSleepSchedule extends StatelessWidget {
  const MyLifeSleepSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: [
                  Text("Sleep Schedule", style: TextStyles.md),
                  Space.h20,
                  Row(
                    children: [
                      Expanded(child: MTextFormField(labelText: "Housing")),
                      Space.w8,
                      Expanded(
                          child: MTextFormField(labelText: "Type of housing")),
                      Space.w8,
                      // Delete button
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete_forever_outlined,
                          color: Colors.red.withOpacity(0.6),
                        ),
                      )
                    ],
                  ),
                  Divider(height: 40),
                  TextButton(
                    onPressed: () {},
                    child: Text("Add extra housing information"),
                  ),
                  Divider(height: 40),
                  SizedBox(
                    width: 172,
                    child: MElevatedButton(text: "Save", onPressed: () {}),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
