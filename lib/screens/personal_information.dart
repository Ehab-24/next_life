import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/texts.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  final String userCareer =
      "Computer Scientist"; // actual user career should be fetched from database
  final String username =
      "Rohan01"; // actual username should be fetched from database
  final String userEmail =
      "Rohan01@example.com"; // actual user email should be fetched from database
  final String userGender =
      "Male"; // actual user gender should be fetched from database

  final int userAge = 24; // actual user age should be fetched from database

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // Selected Path
          Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Seclected path", style: TextStyles.sm),
                    HighlightedtText(text: userCareer),
                  ],
                ),
              ),
            ),
          ),
          Space.h20,

          // Tabs
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Space.w20,
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Theme.of(context).cardColor,
                  ),
                  child: Text("Personal Information"),
                ),
                Space.w20,
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Theme.of(context).cardColor,
                  ),
                  child: Text("Living Situation"),
                ),
                Space.w20,
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Theme.of(context).cardColor,
                  ),
                  child: Text("Education Category"),
                ),
                Space.w20,
              ],
            ),
          ),
          Space.h20,

          // User Info
          Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                child: Column(
                  children: [
                    // User name & age
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Username", style: TextStyles.sm),
                            Space.h2,
                            Text(
                              username,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Age", style: TextStyles.sm),
                            Space.h2,
                            Text(
                              "$userAge years",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Space.h20,

                    // Email & gender
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("E-mail", style: TextStyles.sm),
                            Space.h2,
                            Text(
                              userEmail,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Gender", style: TextStyles.sm),
                            Space.h2,
                            Text(
                              userGender,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Social
                    Divider(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Twitter"),
                        TextButton(onPressed: () {}, child: Text("Add Account"))
                      ],
                    ),
                    Divider(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Facebook"),
                        TextButton(onPressed: () {}, child: Text("Add Account"))
                      ],
                    ),
                    Divider(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Instagram"),
                        TextButton(onPressed: () {}, child: Text("Add Account"))
                      ],
                    ),
                    Divider(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("TokTok"),
                        TextButton(onPressed: () {}, child: Text("Add Account"))
                      ],
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
          )
        ],
      ),
    );
  }
}
