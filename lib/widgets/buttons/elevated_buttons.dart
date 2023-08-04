import 'package:flutter/material.dart';

import '../../styles/buttons.dart';
import '../../styles/text.dart';

class MElevatedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const MElevatedButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(80, 52),
        backgroundColor: Colors.purple.shade400,
        foregroundColor: Colors.white,
        // surfaceTintColor: Colors.purple,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.purple.shade500.withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.md,
      ),
    );
  }
}

class MElevatedIconButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final void Function()? onPressed;

  const MElevatedIconButton({
    required this.text,
    required this.onPressed,
    required this.iconData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyles.elevatedButton,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(iconData),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: TextStyles.md,
          ),
        ],
      ),
    );
  }
}

class MElevatedIconButtonLarge extends StatelessWidget {
  final String text;
  final IconData iconData;
  final void Function()? onPressed;

  const MElevatedIconButtonLarge({
    required this.text,
    required this.onPressed,
    required this.iconData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ButtonStyles.elevatedButtonLarge,
      icon: Icon(iconData),
      label: Text(
        text,
        style: TextStyles.sm,
      ),
    );
  }
}

class AuthProviderButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData iconData;
  final String text;

  const AuthProviderButton({
    required this.text,
    required this.iconData,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(205, 205, 205, 1),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ButtonStyles.authProviderButton,
        icon: Icon(
          iconData,
          color: Colors.green.shade800,
        ),
        label: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}