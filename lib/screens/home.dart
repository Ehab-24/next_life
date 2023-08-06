import 'package:flutter/material.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';

import '../utils.dart';

class HomePage extends StatelessWidget {
  List<CATInfo> cats = [];

  HomePage({super.key}) {
// Call to action buttons
    cats = [
      CATInfo(
        text: "Path Finder Test",
        href: "/path-finder-test",
        iconData: Icons.zoom_out_map_outlined,
      ),
      CATInfo(
        text: "Path Finder Result",
        href: "/path-finder-result",
        iconData: Icons.reviews_outlined,
      ),
      CATInfo(
        text: "My Life Profile",
        href: "/my-life-profile",
        iconData: Icons.local_fire_department,
      ),
      CATInfo(
        text: "The Path Profile",
        href: "/the-path-profile",
        iconData: Icons.person_outline,
      ),
      CATInfo(
        text: "My Next Life Profile",
        href: "/my-next-life-profile",
        iconData: Icons.perm_device_information_outlined,
      ),
      CATInfo(
        text: "Store",
        href: "/store",
        iconData: Icons.store,
      ),
      CATInfo(
        text: "Settings",
        href: "/settings",
        iconData: Icons.settings,
      ),
    ];
  }

  static const nums = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: cats
              .map(
                (cat) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: MElevatedIconButton(
                    text: cat.text,
                    alignment: MainAxisAlignment.start,
                    onPressed: () => pushScreen(context, cat.href),
                    iconData: cat.iconData,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class CATInfo {
  final String text;
  final String href;
  final IconData iconData;

  CATInfo({
    required this.text,
    required this.href,
    required this.iconData,
  });
}
