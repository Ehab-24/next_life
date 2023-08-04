import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/utils.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/buttons/inputs/text_fields.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  void _saveProfile() {
    // logic for save profile
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile picture
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                Space.h32,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 172,
                      child: MTextFormField(labelText: "Username"),
                    ),
                    // TODO: change to calender
                    SizedBox(
                      width: 172,
                      child: MTextFormField(labelText: "Date of birth"),
                    ),
                  ],
                ),
                Space.h32,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 172,
                      child: MTextFormField(labelText: "Gender"),
                    ),
                    SizedBox(
                      width: 172,
                      child: MTextFormField(labelText: "Password"),
                    ),
                  ],
                ),
                Space.h32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 172,
                      child: MElevatedIconButton(
                        text: "Notification",
                        onPressed: () {},
                        iconData: Icons.notifications,
                      ),
                    ),
                    SizedBox(
                      width: 172,
                      child: MElevatedIconButton(
                        text: "Appearance",
                        onPressed: () =>
                            pushScreen(context, '/change-appearance'),
                        iconData: Icons.color_lens,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        MElevatedButton(text: "Save Profile", onPressed: _saveProfile)
      ],
    );
  }
}
