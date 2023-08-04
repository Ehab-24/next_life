import 'package:flutter/material.dart';

void pushScreen(BuildContext context, String href) {
  Navigator.of(context).pushNamed(href);
}
