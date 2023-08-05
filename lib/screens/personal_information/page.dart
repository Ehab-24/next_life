import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/screens/error.dart';
import 'package:next_life/screens/personal_information/components/tabs/living_situation.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/texts.dart';

import 'components/tab_button.dart';
import 'components/tabs/personal_information.dart';

class PersonalInformation extends StatefulWidget {
  PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  final String userCareer =
      "Computer Scientist"; // actual user career should be fetched from database
  final String username =
      "Rohan01"; // actual username should be fetched from database
  final String userEmail =
      "Rohan01@example.com"; // actual user email should be fetched from database
  final String userGender =
      "Male"; // actual user gender should be fetched from database
  final int userAge = 24; // actual user age should be fetched from database

  int _selectedTabIndex = 0;

  Widget _getActiveTab() {
    switch (_selectedTabIndex) {
      case 0:
        return PersonalInformationTab(
          username: username,
          userAge: userAge,
          userEmail: userEmail,
          userGender: userGender,
        );
      case 1:
        return LivingSituation();
      case 2:
        return PersonalInformationTab(
          username: username,
          userAge: userAge,
          userEmail: userEmail,
          userGender: userGender,
        );
      default:
        return ErrorPage(message: "Unexpected tab index: $_selectedTabIndex");
    }
  }

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

          // Tabs navigation
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Space.w20,
                TabButton(
                  text: "Personal Information",
                  isActive: _selectedTabIndex == 0,
                  onPressed: () => setState(() {
                    _selectedTabIndex = 0;
                  }),
                ),
                Space.w20,
                TabButton(
                  text: "Living Situation",
                  isActive: _selectedTabIndex == 1,
                  onPressed: () => setState(() {
                    _selectedTabIndex = 1;
                  }),
                ),
                Space.w20,
                TabButton(
                  text: "Education Category",
                  isActive: _selectedTabIndex == 2,
                  onPressed: () => setState(() {
                    _selectedTabIndex = 2;
                  }),
                ),
                Space.w20,
              ],
            ),
          ),
          Space.h20,

          // Currently selected tab
          _getActiveTab()
        ],
      ),
    );
  }
}
