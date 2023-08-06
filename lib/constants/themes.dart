import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color.fromRGBO(41, 137, 119, 1),
    secondary: Color.fromRGBO(126, 190, 178, 1),
    onPrimary: Colors.white,
    background: Color.fromARGB(255, 229, 240, 238),
  ),
  dividerColor: Color.fromRGBO(126, 190, 178, 1),
  cardTheme: CardTheme(
    color: Colors.white,
    surfaceTintColor: Colors.white,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color.fromRGBO(41, 137, 119, 1).withOpacity(0.2),
      ),
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  useMaterial3: true,
);

final ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.dark(
    primary: Color.fromRGBO(41, 137, 119, 1),
    secondary: Color.fromRGBO(126, 190, 178, 1),
    onPrimary: Colors.white,
  ),
  dividerColor: Colors.grey.shade700,
  cardTheme: CardTheme(
    color: Colors.grey.shade900,
    surfaceTintColor: Colors.black,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.grey.shade700),
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  useMaterial3: true,
);
