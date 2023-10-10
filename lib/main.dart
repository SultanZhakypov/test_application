import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:test_application/core/config/injectable.dart';
import 'package:test_application/modules/home/ui/screens/main_screen.dart';

void main() {
  configureInjection(Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MainScreen(),
    );
  }
}
