import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/providers/theme.dart';
import 'package:next_life/styles/text.dart';
import 'package:provider/provider.dart';

import '../widgets/buttons/elevated_buttons.dart';

class Career {
  final int rank;
  final String title;

  Career(this.rank, this.title);
}

class PathFinderReport extends StatelessWidget {
  // actual career suggestions sould be fetched from database
  final List<Career> careerSuggestions = [
    Career(2, "Veterinary"),
    Career(3, "Doctor"),
    Career(4, "Firefighter"),
    Career(5, "Paramedic"),
  ];

  final String userCareer =
      "Computer Scientist"; // actual user career should be fetched from database

  PathFinderReport({super.key});

  void _findAnotherPath() {
    // implement logic for Find Another Path
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Section 1 - Your top career
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade200,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.yellow.shade700,
                            ),
                          ),
                          child: Text(
                            "#1",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.brown.shade300,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text("Your top career", style: TextStyles.md),
                        SizedBox.shrink(),
                      ],
                    ),
                    Space.h20,
                    FractionallySizedBox(
                      widthFactor: 1.0,
                      child: _CareerExpandableButton(userCareer: userCareer),
                    )
                  ],
                ),
              ),
            ),
          ),

          Space.h32,

          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Wrap(
              runSpacing: 16,
              children: careerSuggestions
                  .map((c) => FractionallySizedBox(
                        key: Key(c.title),
                        widthFactor: 0.5,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: _CareerCard(career: c),
                        ),
                      ))
                  .toList(),
            ),
          ),

          Space.h48,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FractionallySizedBox(
              widthFactor: 1.0,
              child: MElevatedButton(
                text: "Find Another Path",
                onPressed: _findAnotherPath,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CareerExpandableButton extends StatelessWidget {
  const _CareerExpandableButton({
    super.key,
    required this.userCareer,
  });

  final String userCareer;

  @override
  Widget build(BuildContext context) {
    final isLight = Provider.of<ThemeProvider>(context).isLight;

    return ExpandablePanel(
      theme: ExpandableThemeData(
        tapHeaderToExpand: true,
        hasIcon: false,
      ),
      header: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primary.withOpacity(0.08),
        ),
        child: Text(
          userCareer,
          style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      collapsed: const SizedBox.shrink(),
      expanded: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              "Info about path",
              style: TextStyles.lg,
            ),
          ),
          Space.h8,
          Text(
            "Lorem ipsum dolor sit amet consectetur. Aliquam dictumst id cursus morbi nulla in in. Platea in aliquam ac netus convallis eu etiam et elementum. Commodo duis interdum nunc cras imperdiet. Massa pellentesque habitant tellus luctus justo.",
          ),
          Space.h32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MElevatedButtonMini(
                text: "Walk this path",
                onPressed: () {},
              ),
              Spacer(),
              MElevatedButtonMini(
                text: "Choose another path",
                backgroundColor: Theme.of(context).cardColor,
                textColor: Theme.of(context).colorScheme.primary,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _CareerCard extends StatelessWidget {
  const _CareerCard({
    required this.career,
    super.key,
  });

  final Career career;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.yellow.shade200,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.yellow.shade700,
                ),
              ),
              child: Text(
                "#${career.rank.toString()}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.brown.shade300,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(career.title, style: TextStyles.sm),
            SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
