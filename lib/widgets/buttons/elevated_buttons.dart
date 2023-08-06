import 'package:flutter/material.dart';
import 'package:next_life/providers/theme.dart';
import 'package:provider/provider.dart';

import '../../styles/buttons.dart';
import '../../styles/text.dart';

class MElevatedButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final void Function()? onPressed;

  const MElevatedButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyles.elevatedButton(backgroundColor),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.md,
      ),
    );
  }
}

class MElevatedButtonMini extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onPressed;

  const MElevatedButtonMini({
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyles.elevatedButtonMini(backgroundColor),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: textColor,
        ),
      ),
    );
  }
}

class MElevatedIconButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Color? backgroundColor;
  final void Function()? onPressed;
  final MainAxisAlignment? alignment;

  const MElevatedIconButton({
    required this.text,
    required this.onPressed,
    required this.iconData,
    this.backgroundColor,
    this.alignment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyles.elevatedButton(backgroundColor),
      child: Row(
        mainAxisAlignment: alignment ?? MainAxisAlignment.center,
        children: [
          Icon(iconData),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: TextStyles.sm,
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
    return FilledButton.icon(
      onPressed: onPressed,
      style: ButtonStyles.elevatedButtonLarge(
        Theme.of(context).colorScheme.secondary,
      ),
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
    final isLight = Provider.of<ThemeProvider>(context).isLight;

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: isLight
                ? ElevatedButton.styleFrom(
                    surfaceTintColor: Colors.white,
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                  )
                : ElevatedButton.styleFrom(
                    surfaceTintColor: Colors.black,
                    backgroundColor: Colors.grey.shade900,
                  ),
          ),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(172, 36),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                iconData,
                color: Colors.green.shade800,
              ),
              Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.w400),
              ),
              const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
