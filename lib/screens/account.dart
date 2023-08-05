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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MElevatedButton(
                      text: "Username",
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/username'),
                    ),
                    MElevatedButton(
                      text: "Date of birth",
                      onPressed: () => Navigator.of(context).pushNamed('/dob'),
                    ),
                  ],
                ),
                Space.h32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 144,
                      child: MTextFormField(labelText: "Gender"),
                    ),
                    Space.w8,
                    SizedBox(
                      width: 144,
                      child: MTextFormField(labelText: "Password"),
                    ),
                  ],
                ),
                Space.h32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MElevatedIconButton(
                      text: "Notification",
                      onPressed: () {},
                      iconData: Icons.notifications,
                    ),
                    MElevatedIconButton(
                      text: "Appearance",
                      onPressed: () =>
                          pushScreen(context, '/change-appearance'),
                      iconData: Icons.color_lens,
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
