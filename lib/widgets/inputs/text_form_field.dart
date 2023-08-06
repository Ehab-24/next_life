import 'package:flutter/material.dart';

import '../../styles/inputs.dart';

class MTextFormField extends StatelessWidget {
  final String labelText;

  const MTextFormField({
    required this.labelText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: TextFormField(
        decoration: InputStyles.textInput(context, labelText),
      ),
    );
  }
}
