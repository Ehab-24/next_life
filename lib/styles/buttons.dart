import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyle elevatedButton(Color? backgroundColor) =>
      ElevatedButton.styleFrom(
        minimumSize: const Size(80, 52),
        backgroundColor: backgroundColor,
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
        minimumSize: const Size(72, 44),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 3,
            color: Colors.teal.shade300.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      );

  static final elevatedButtonLarge = ElevatedButton.styleFrom(
    minimumSize: const Size(172, 64),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        width: 3,
        color: Colors.teal.shade300.withOpacity(0.5),
      ),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static final authProviderButton = ElevatedButton.styleFrom(
    minimumSize: const Size(172, 52),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
    elevation: 0,
    surfaceTintColor: Colors.white,
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
  );
}
