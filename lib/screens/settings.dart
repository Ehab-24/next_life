import 'dart:math';

import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/utils.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MElevatedIconButtonLarge(
                text: "Account",
                onPressed: () => pushScreen(context, '/account'),
                iconData: Icons.person_2_outlined,
              ),
              Spacer(),
              MElevatedIconButtonLarge(
                text: "Help & Support",
                onPressed: () => pushScreen(context, '/help-and-support'),
                iconData: Icons.help_outline_outlined,
              ),
            ],
          ),
          Space.h32,
          FractionallySizedBox(
            widthFactor: 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AuthProviderButton(
                  text: "Sign-in with Google",
                  iconData: Icons.mark_email_read,
                  onPressed: () {},
                ),
                Space.h2,
                AuthProviderButton(
                  text: "Sign-in with Apple",
                  iconData: Icons.apple,
                  onPressed: () {},
                ),
                Space.h2,
                AuthProviderButton(
                  text: "Sign-in with Facebook",
                  iconData: Icons.face,
                  onPressed: () {},
                ),
                Space.h2,
                AuthProviderButton(
                  text: "Sign-in with Amazon",
                  iconData: Icons.amp_stories_sharp,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
