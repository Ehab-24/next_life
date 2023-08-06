import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/inputs/text_form_field.dart';
import 'package:next_life/widgets/dropdown_button.dart';

class MyLifeInternetSpeed extends StatefulWidget {
  const MyLifeInternetSpeed({super.key});

  @override
  State<MyLifeInternetSpeed> createState() => _MyLifeInternetSpeedState();
}

class _MyLifeInternetSpeedState extends State<MyLifeInternetSpeed> {
  String _selectInternetSpeed = "";

  final List<String> options = [
    "Slow - 1 Mbps to 5 Mbps",
    "Medium - 5 Mbps to 10 Mbps",
    "Fast - 10 Mbps to 15 Mbps",
  ];

  void _save() {
    // implement save logic
  }

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
                  Text("Internet Speed", style: TextStyles.md),
                  Space.h20,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MDropdownButton(
                        value: _selectInternetSpeed.isEmpty
                            ? options[0]
                            : _selectInternetSpeed,
                        onChange: (value) => setState(() {
                          _selectInternetSpeed = value ?? options[0];
                        }),
                        options: options,
                      )
                    ],
                  ),
                  Space.h20,
                  SizedBox(
                    width: 172,
                    child: MElevatedButton(
                      text: "Save",
                      onPressed: _save,
                    ),
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
