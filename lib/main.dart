import 'package:billzilla/onboarding_flow/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BillZilla());
}

class BillZilla extends StatelessWidget {
  const BillZilla({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BillZilla',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: OnboardingScreen(),
    );
  }
}
