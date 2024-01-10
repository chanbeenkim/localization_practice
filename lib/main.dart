import 'package:flutter/material.dart';
import 'package:localization_practice/l10n/l10n.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: L10n.all,
      home: const HomeScreen(),
    );
  }
}
