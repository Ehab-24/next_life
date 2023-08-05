import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/utils.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';

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
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    super.key,
  });

  final String username =
      "Rohan"; // actual username should be fetched from database

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
                  width: 60,
                  height: 60,
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
                Space.w8,
                Text(
                  username,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  softWrap: false,
                )
              ],
            ),
            IconButton.filled(
              onPressed: () => Navigator.of(context).popUntil(
                (route) => route.isFirst,
              ),
              icon: Icon(Icons.home_outlined),
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
                onPressed: () => pushScreen(context, '/pathfinder-report'),
                backgroundColor: Theme.of(context).colorScheme.secondary,
                iconData: Icons.manage_search_outlined,
              ),
            ),
            Space.w32,
            Expanded(
              child: MElevatedIconButton(
                text: "Store",
                onPressed: () {},
                backgroundColor: Theme.of(context).colorScheme.secondary,
                iconData: Icons.store_outlined,
              ),
            )
          ],
        ),
        Space.h20,
        // TODO: change to dropdown button
        MElevatedButton(
          text: "Profile Select",
          onPressed: () {},
          backgroundColor: Theme.of(context).colorScheme.secondary,
        )
      ],
    );
  }
}
