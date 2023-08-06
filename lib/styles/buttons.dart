import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyle elevatedButton(Color? backgroundColor) =>
      ElevatedButton.styleFrom(
        minimumSize: const Size(80, 39),
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 8),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 3,
            color: Colors.teal.shade300.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      );

  static ButtonStyle elevatedButtonMini(Color? backgroundColor) =>
      ElevatedButton.styleFrom(
        minimumSize: const Size(72, 35),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 3,
            color: Colors.teal.shade300.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      );

  static ButtonStyle elevatedButtonLarge(Color? backgroundColor) =>
      ElevatedButton.styleFrom(
        minimumSize: const Size(172, 51),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 3,
            color: Colors.teal.shade300.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      );

  static final authProviderButton = ElevatedButton.styleFrom(
    minimumSize: const Size(172, 36),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
    elevation: 0,
    surfaceTintColor: Colors.white,
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
  );
}
