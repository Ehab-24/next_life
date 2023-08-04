import 'package:flutter/material.dart';

class ButtonStyles {
  static final elevatedButton = ElevatedButton.styleFrom(
    minimumSize: const Size(80, 52),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Colors.purple.shade500.withOpacity(0.1),
      ),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static final elevatedButtonLarge = ElevatedButton.styleFrom(
    minimumSize: const Size(172, 64),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Colors.purple.shade500.withOpacity(0.1),
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
