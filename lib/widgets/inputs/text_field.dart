import 'package:flutter/material.dart';
import 'package:next_life/styles/text.dart';

import '../../constants/spacing.dart';
import '../../styles/inputs.dart';

class MTextField extends StatelessWidget {
  const MTextField({super.key, required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText, style: TextStyles.xs),
        Space.h2,
        SizedBox(
          height: 42,
          child: TextField(
            decoration: InputStyles.textInput(context, ""),
          ),
        ),
      ],
    );
  }
}
