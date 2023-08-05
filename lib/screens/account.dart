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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
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
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://loremflickr.com/640/480/nature',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Space.h32,
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // TODO: change to outlined button
                          MElevatedButton(
                            text: "Username",
                            onPressed: () =>
                                Navigator.of(context).pushNamed('/username'),
                          ),
                          Space.h8,
                          MElevatedButton(
                            text: "Gender",
                            onPressed: () => pushScreen(context, '/gender'),
                          ),
                        ],
                      ),
                    ),
                    Space.w32,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MElevatedButton(
                            text: "Date of birth",
                            onPressed: () =>
                                Navigator.of(context).pushNamed('/dob'),
                          ),
                          Space.h8,
                          MElevatedButton(
                            text: "Password",
                            onPressed: () =>
                                pushScreen(context, '/change-password'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Space.h32,
                Row(
                  children: [
                    Expanded(
                      child: MElevatedIconButton(
                        text: "Notification",
                        onPressed: () {},
                        iconData: Icons.notifications,
                      ),
                    ),
                    Space.w32,
                    Expanded(
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
