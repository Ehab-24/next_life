import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/inputs/text_field.dart';

import '../../../../../styles/inputs.dart';

class MyLifeAddress extends StatelessWidget {
  const MyLifeAddress({super.key});

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
                  Text("Address", style: TextStyles.md),
                  Space.h20,
                  MTextField(labelText: "Street address"),
                  Space.h20,
                  MTextField(labelText: "ZIP Code"),
                  Space.h20,
                  Row(
                    children: [
                      Expanded(
                        child: MTextField(labelText: "City"),
                      ),
                      Space.w20,
                      Expanded(
                        child: MTextField(labelText: "State"),
                      ),
                    ],
                  ),
                  Space.h32,
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
