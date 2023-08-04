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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: Colors.purple.shade500,
              padding: const EdgeInsets.all(20),
              child: _Header(),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: child,
            ),
          ],
        ),
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
                  "Welcome, $username",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )
              ],
            ),
            MElevatedIconButton(
              text: "Home",
              onPressed: () => Navigator.popUntil(
                context,
                (route) => route.isFirst,
              ),
              iconData: Icons.home_outlined,
            )
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
                onPressed: () {},
                iconData: Icons.manage_search_outlined,
              ),
            ),
            Space.w32,
            Expanded(
              child: MElevatedIconButton(
                text: "Store",
                onPressed: () {},
                iconData: Icons.store_outlined,
              ),
            )
          ],
        ),
        Space.h20,
        // TODO: change to dropdown button
        MElevatedButton(text: "Profile Select", onPressed: () {})
      ],
    );
  }
}
