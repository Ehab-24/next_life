import 'package:flutter/material.dart';
import 'package:next_life/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(41, 137, 119, 1),
          secondary: Color.fromRGBO(126, 190, 178, 1),
          onPrimary: Colors.white,
          background: Color.fromARGB(255, 229, 240, 238),
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: Color.fromRGBO(41, 137, 119, 1),
          secondary: Color.fromRGBO(126, 190, 178, 1),
          onPrimary: Colors.white,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
