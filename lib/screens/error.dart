import 'package:flutter/material.dart';

import '../styles/text.dart';

class ErrorPage extends StatelessWidget {
  final String message;

  const ErrorPage({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: TextStyles.xl4,
      ),
    );
  }
}
