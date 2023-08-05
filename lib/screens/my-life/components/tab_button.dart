import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    required this.text,
    required this.isActive,
    required this.onPressed,
    super.key,
  });

  final String text;
  final bool isActive;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: add animation
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: isActive
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).cardColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color:
              isActive ? Colors.white : Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
