import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Street address"),
                      Space.h2,
                      SizedBox(
                        height: 44,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputStyles.textInput(context, ""),
                        ),
                      ),
                    ],
                  ),
                  Space.h20,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ZIP code"),
                      Space.h2,
                      SizedBox(
                        height: 44,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputStyles.textInput(context, ""),
                        ),
                      ),
                    ],
                  ),
                  Space.h20,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("City"),
                            Space.h2,
                            SizedBox(
                              height: 44,
                              child: TextField(
                                keyboardType: TextInputType.number,
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
                            Text("State"),
                            Space.h2,
                            SizedBox(
                              height: 44,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputStyles.textInput(context, ""),
                              ),
                            ),
                          ],
                        ),
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
