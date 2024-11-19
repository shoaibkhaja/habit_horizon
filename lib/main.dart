import "package:flutter/material.dart";
import "package:habit_horizon/pages/sign_up.dart";
import "package:habit_horizon/pages/splash-screen.dart";
import "package:habit_horizon/pages/verficationscreen.dart";

void main() {
  runApp(const HabitHorizon());
}

class HabitHorizon extends StatelessWidget {
  const HabitHorizon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Habit Horizo', home: Verficationscreen());
  }
}

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(),
    );
  }
}
