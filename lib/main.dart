import 'package:flutter/material.dart';
import 'package:next_life/constants/themes.dart';
import 'package:next_life/providers/theme.dart';
import 'package:next_life/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: Provider.of<ThemeProvider>(context).theme,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
