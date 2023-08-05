import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/buttons/inputs/text_fields.dart';
import 'package:next_life/widgets/time_picker.dart';

import '../../../../../styles/inputs.dart';

class MyLifeSleepSchedule extends StatefulWidget {
  const MyLifeSleepSchedule({super.key});

  @override
  State<MyLifeSleepSchedule> createState() => _MyLifeSleepScheduleState();
}

class _MyLifeSleepScheduleState extends State<MyLifeSleepSchedule> {
  TimeOfDay sleepTime = TimeOfDay.now();
  TimeOfDay wakeupTime = TimeOfDay.now();

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
                  Text("Pets", style: TextStyles.md),
                  Space.h20,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Sleep time"),
                            Space.h2,
                            SizedBox(
                              height: 44,
                              child: MTimePicker(
                                time: sleepTime,
                                onChange: (time) => setState(() {
                                  sleepTime = time ?? TimeOfDay.now();
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Space.w20,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Wake up time"),
                            Space.h2,
                            SizedBox(
                              height: 44,
                              child: MTimePicker(
                                time: wakeupTime,
                                onChange: (TimeOfDay? time) => setState(() {
                                  wakeupTime = time ?? TimeOfDay.now();
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 40),
                  TextButton(
                    onPressed: () {},
                    child: Text("Add additional pet"),
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
