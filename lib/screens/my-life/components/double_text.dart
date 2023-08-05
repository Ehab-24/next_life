import 'package:flutter/material.dart';

import '../../../constants/spacing.dart';
import '../../../styles/text.dart';

class DoubleText extends StatelessWidget {
  const DoubleText({
    super.key,
    required this.title1,
    required this.text1,
    required this.title2,
    required this.text2,
    this.onPressed1,
    this.onPressed2,
  });

  final String title1;
  final String title2;
  final String text1;
  final String text2;
  final void Function()? onPressed1;
  final void Function()? onPressed2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title1, style: TextStyles.sm),
            Space.h2,
            TextButton(
              onPressed: onPressed1,
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              child: Text(
                text1,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(title2, style: TextStyles.sm),
            Space.h2,
            TextButton(
              onPressed: onPressed2,
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              child: Text(
                text2,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
