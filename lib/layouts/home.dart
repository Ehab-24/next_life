import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/utils.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:next_life/widgets/dropdown_button.dart';

class HomeLayout extends StatelessWidget {
  final Widget child;

  const HomeLayout({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
            padding: const EdgeInsets.all(20),
            child: _Header(),
          ),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}

class _Header extends StatefulWidget {
  _Header({
    super.key,
  });

  @override
  State<_Header> createState() => _HeaderState();
}

class _HeaderState extends State<_Header> {
  final String username =
      "Rohan"; // actual username should be fetched from database

  String _selectedOption = "Profile Select";
  final List<String> options = [
    "Profile Select",
    "Something else?",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://loremflickr.com/640/480/nature',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Space.w20,
                Text(
                  username,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  softWrap: false,
                )
              ],
            ),
            MElevatedIconButton(
              text: "Home",
              onPressed: () => Navigator.of(context).popUntil(
                (route) => route.isFirst,
              ),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              iconData: Icons.home_outlined,
            ),
          ],
        ),
        Space.h20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: MElevatedIconButton(
                text: "Path Finder",
                alignment: MainAxisAlignment.start,
                onPressed: () => pushScreen(context, '/pathfinder-report'),
                backgroundColor: Theme.of(context).colorScheme.secondary,
                iconData: Icons.manage_search_outlined,
              ),
            ),
            Space.w8,
            Expanded(
              child: MElevatedIconButton(
                text: "Store",
                alignment: MainAxisAlignment.start,
                onPressed: () {},
                backgroundColor: Theme.of(context).colorScheme.secondary,
                iconData: Icons.store_outlined,
              ),
            )
          ],
        ),
        Space.h20,
        MDropdownButton(
          isLight: true,
          options: options,
          onChange: (String? value) => setState(() {
            _selectedOption = value ?? options[0];
          }),
          value: _selectedOption,
        ),
      ],
    );
  }
}
