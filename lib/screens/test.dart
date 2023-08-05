import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/buttons/inputs/text_fields.dart';
import 'package:next_life/widgets/date_picker.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("This is a test screen feat all custom widgets"),
          Space.h40,
          FractionallySizedBox(
            widthFactor: 1.0,
            child: MElevatedButton(
              text: "Elevated Button",
              onPressed: () {},
            ),
          ),
          Space.h20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MElevatedIconButton(
                onPressed: () {},
                text: "Elevated Icon",
                iconData: Icons.alarm,
              ),
              MElevatedIconButton(
                onPressed: () {},
                text: "Elevated Icon",
                iconData: Icons.handshake_outlined,
              ),
            ],
          ),
          Space.h20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MElevatedIconButtonLarge(
                text: "Large",
                onPressed: () {},
                iconData: Icons.perm_identity,
              ),
              Space.w20,
              MElevatedIconButtonLarge(
                text: "Large",
                onPressed: () {},
                iconData: Icons.ac_unit,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AuthProviderButton(
                  text: "Sign-in with Google",
                  iconData: Icons.sports_golf,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Space.h20,
          const MTextFormField(
            labelText: "Name",
          ),
          Space.h20,
          DatePicker(text: "Date Picker")
        ],
      ),
    );
  }
}
