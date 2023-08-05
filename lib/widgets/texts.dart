import 'package:flutter/material.dart';

import '../styles/text.dart';

class HighlightedtText extends StatelessWidget {
  const HighlightedtText({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: TextStyles.md,
      ),
    );
  }
}
