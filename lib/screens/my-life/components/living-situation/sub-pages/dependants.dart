import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/inputs.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/inputs/text_field.dart';

class MyLifeDependants extends StatelessWidget {
  MyLifeDependants({super.key});

  void _save() {
    // implement save logic
    print(numDependants.text);
  }

  var numDependants = TextEditingController();
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
                  Text("Dependants", style: TextStyles.md),
                  Space.h20,
                  MTextField(labelText: "Number of dependants"),
                  Space.h20,
                  SizedBox(
                    width: 172,
                    child: MElevatedButton(text: "Save", onPressed: _save),
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
