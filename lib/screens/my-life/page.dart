import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/screens/error.dart';
import 'package:next_life/screens/my-life/components/living-situation/page.dart';
import 'package:next_life/screens/my-life/components/living-situation/sub-pages/address.dart';
import 'package:next_life/screens/my-life/components/living-situation/sub-pages/dependants.dart';
import 'package:next_life/screens/my-life/components/living-situation/sub-pages/hobbies.dart';
import 'package:next_life/screens/my-life/components/living-situation/sub-pages/housing.dart';
import 'package:next_life/screens/my-life/components/living-situation/sub-pages/internet_speed.dart';
import 'package:next_life/screens/my-life/components/living-situation/sub-pages/pets.dart';
import 'package:next_life/screens/my-life/components/living-situation/sub-pages/sleep_schedule.dart';
import 'package:next_life/screens/my-life/components/living-situation/sub-pages/transportation.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/texts.dart';

import 'components/tab_button.dart';
import 'components/tabs/personal_information.dart';

class MyLife extends StatefulWidget {
  MyLife({super.key});

  @override
  State<MyLife> createState() => _MyLifeState();
}

class SelectedTab {
  static const personalInformation = 'personal-information';

  static const livingSituation = 'living-situation';
  static const livingSituationHousing = 'living-situation/housing';
  static const livingSituationTransportation =
      'living-situation/transportation';
  static const livingSituationDependents = 'living-situation/dependents';
  static const livingSituationAddress = 'living-situation/address';
  static const livingSituationPets = 'living-situation/pets';
  static const livingSituationInternetSpeed = 'living-situation/internet-speed';
  static const livingSituationHobbies = 'living-situation/hobbies';
  static const livingSituationSleepSchedule = 'living-situation/sleep-schedule';

  static const educationCategory = 'education-category';
}

class _MyLifeState extends State<MyLife> {
  final String userCareer =
      "Computer Scientist"; // actual user career should be fetched from database
  final String username =
      "Rohan01"; // actual username should be fetched from database
  final String userEmail =
      "Rohan01@example.com"; // actual user email should be fetched from database
  final String userGender =
      "Male"; // actual user gender should be fetched from database
  final int userAge = 24; // actual user age should be fetched from database

  String _selectedTab = SelectedTab.personalInformation;

  void setSelectedTab(String tab) {
    setState(() {
      _selectedTab = tab;
    });
  }

  // Check which tab button is currently active
  bool _isActive(String pathname) {
    print(_selectedTab);
    print(pathname);
    return _selectedTab.contains(pathname);
  }

  Widget _getActiveTab() {
    switch (_selectedTab) {
      case SelectedTab.personalInformation:
        return PersonalInformationTab(
          username: username,
          userAge: userAge,
          userEmail: userEmail,
          userGender: userGender,
        );
      case SelectedTab.livingSituation:
        return LivingSituation(setTab: setSelectedTab);
      case SelectedTab.livingSituationHousing:
        return MyLifeHousing();
      case SelectedTab.livingSituationTransportation:
        return MyLifeTransportation();
      case SelectedTab.livingSituationDependents:
        return MyLifeDependants();
      case SelectedTab.livingSituationAddress:
        return MyLifeAddress();
      case SelectedTab.livingSituationPets:
        return MyLifePets();
      case SelectedTab.livingSituationInternetSpeed:
        return MyLifeInternetSpeed();
      case SelectedTab.livingSituationHobbies:
        return MyLifeHobbies();
      case SelectedTab.livingSituationSleepSchedule:
        return MyLifeSleepSchedule();
      case SelectedTab.educationCategory:
        return PersonalInformationTab(
          username: username,
          userAge: userAge,
          userEmail: userEmail,
          userGender: userGender,
        );
      default:
        return ErrorPage(message: "Unexpected tab index: $_selectedTab");
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

          // Tabs navigation
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Space.w20,
                TabButton(
                  text: "Personal Information",
                  isActive: _isActive(SelectedTab.personalInformation),
                  onPressed: () => setState(() {
                    _selectedTab = SelectedTab.personalInformation;
                  }),
                ),
                Space.w20,
                TabButton(
                  text: "Living Situation",
                  isActive: _isActive(SelectedTab.livingSituation),
                  onPressed: () => setState(() {
                    _selectedTab = SelectedTab.livingSituation;
                  }),
                ),
                Space.w20,
                TabButton(
                  text: "Education Category",
                  isActive: _isActive(SelectedTab.educationCategory),
                  onPressed: () => setState(() {
                    _selectedTab = SelectedTab.educationCategory;
                  }),
                ),
                Space.w20,
              ],
            ),
          ),

          // Currently selected tab
          _getActiveTab()
        ],
      ),
    );
  }
}
