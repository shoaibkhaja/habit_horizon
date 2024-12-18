import "package:flutter/material.dart";
import "package:habit_horizon/pages/splash-screen.dart";

void main() {
  runApp(const HabitHorizon());
}

class HabitHorizon extends StatelessWidget {
  const HabitHorizon({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Habit Horizon', home: SplashScreen());
  }
}
