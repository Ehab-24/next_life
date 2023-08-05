import 'package:flutter/material.dart';

import '../../../../constants/spacing.dart';
import '../../../../widgets/buttons/elevated_buttons.dart';
import '../add_social_account_tile.dart';
import '../double_text.dart';

class PersonalInformationTab extends StatelessWidget {
  const PersonalInformationTab({
    super.key,
    required this.username,
    required this.userAge,
    required this.userEmail,
    required this.userGender,
  });

  final String username;
  final int userAge;
  final String userEmail;
  final String userGender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            children: [
              // User name & age
              DoubleText(
                title1: "Username",
                text1: username,
                title2: "Age",
                text2: "$userAge years",
              ),

              Space.h20,

              // E-mail & gender
              DoubleText(
                title1: "E-mail",
                text1: userEmail,
                title2: "Gender",
                text2: userGender,
              ),

              // Social
              Divider(height: 40),
              AddSocialAccountTile(platform: "Twitter"),
              Divider(height: 40),
              AddSocialAccountTile(platform: "Facebook"),
              Divider(height: 40),
              AddSocialAccountTile(platform: "Instagram"),
              Divider(height: 40),
              AddSocialAccountTile(platform: "TikTok"),
              Divider(height: 40),

              SizedBox(
                width: 172,
                child: MElevatedButton(text: "Save", onPressed: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
