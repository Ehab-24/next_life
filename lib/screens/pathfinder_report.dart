import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Section 1 - Your top career
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.yellow.shade700.withOpacity(0.5),
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
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.08),
                    ),
                    child: Text(
                      userCareer,
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

        Space.h32,

        Wrap(
          children: careerSuggestions
              .map((c) => FractionallySizedBox(
                    key: Key(c.title),
                    widthFactor: 0.5,
                    child: _CareerCard(career: c),
                  ))
              .toList(),
        ),

        const Spacer(),
        FractionallySizedBox(
          widthFactor: 1.0,
          child: MElevatedButton(
            text: "Find Another Path",
            onPressed: _findAnotherPath,
          ),
        ),
      ],
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
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.yellow.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.yellow.shade700.withOpacity(0.5),
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
            Text(career.title, style: TextStyles.md),
            SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
