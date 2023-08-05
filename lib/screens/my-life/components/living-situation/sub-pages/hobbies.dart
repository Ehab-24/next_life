import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';

import '../../../../../styles/inputs.dart';

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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hobby description"),
                            Space.h2,
                            SizedBox(
                              height: 44,
                              child: TextField(
                                decoration: InputStyles.textInput(context, ""),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Space.w20,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hours / week"),
                            Space.h2,
                            SizedBox(
                              height: 44,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: InputStyles.textInput(context, ""),
                              ),
                            ),
                          ],
                        ),
                      ),
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
