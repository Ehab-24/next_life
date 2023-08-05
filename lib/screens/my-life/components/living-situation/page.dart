import 'package:flutter/material.dart';
import 'package:next_life/screens/my-life/components/double_text.dart';
import 'package:next_life/screens/my-life/page.dart';
import 'package:next_life/utils.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';

class LivingSituation extends StatelessWidget {
  const LivingSituation({super.key, required this.setTab});

  final void Function(String) setTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          children: [
            DoubleText(
              title1: "Housing",
              text1: "Edit Housing",
              onPressed1: () => setTab(SelectedTab.livingSituationHousing),
              title2: "transportation",
              text2: "Edit Transportation",
              onPressed2: () =>
                  setTab(SelectedTab.livingSituationTransportation),
            ),
            Divider(height: 40),
            DoubleText(
              title1: "Dependents",
              text1: "Edit dependents",
              onPressed1: () => setTab(SelectedTab.livingSituationDependents),
              title2: "Address",
              text2: "Edit address",
              onPressed2: () => setTab(SelectedTab.livingSituationAddress),
            ),
            Divider(height: 40),
            DoubleText(
              title1: "Pets",
              text1: "Edit pets",
              onPressed1: () => setTab(SelectedTab.livingSituationPets),
              title2: "Internet Speed",
              text2: "Edit internet speed",
              onPressed2: () =>
                  setTab(SelectedTab.livingSituationInternetSpeed),
            ),
            Divider(height: 40),
            DoubleText(
              title1: "Hobbies",
              text1: "Edit hobbies",
              onPressed1: () => setTab(SelectedTab.livingSituationHobbies),
              title2: "Sleep Schedule",
              text2: "Edit sleep schedule",
              onPressed2: () =>
                  setTab(SelectedTab.livingSituationSleepSchedule),
            ),
            Divider(height: 40),
            SizedBox(
              width: 172,
              child: MElevatedButton(text: "Save", onPressed: () {}),
            )
          ],
        ),
      )),
    );
  }
}
