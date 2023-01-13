import 'package:flutter/material.dart';
import 'package:toonflix/main/services/api_service.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  ApiService().getTodaysToons();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
