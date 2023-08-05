import 'package:flutter/material.dart';

class AddSocialAccountTile extends StatelessWidget {
  const AddSocialAccountTile({super.key, required this.platform});

  final String platform;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(platform),
        TextButton(onPressed: () {}, child: Text("Add Account"))
      ],
    );
  }
}
