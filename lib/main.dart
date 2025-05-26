import 'package:flutter/material.dart';
import 'views/home_view.dart';

void main() {
  runApp(const LifeXPApp());
}

class LifeXPApp extends StatelessWidget {
  const LifeXPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LifeXP',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
