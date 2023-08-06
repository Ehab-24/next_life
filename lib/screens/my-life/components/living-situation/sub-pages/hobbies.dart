import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/inputs/text_field.dart';

class MyLifeHobbies extends StatelessWidget {
  const MyLifeHobbies({super.key});

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
                  Text("Hobbies", style: TextStyles.md),
                  Space.h20,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                          child: MTextField(labelText: "Hobby description")),
                      Space.w20,
                      Expanded(child: MTextField(labelText: "Hours / week")),
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
                    child: Text("Add additional hobby"),
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
