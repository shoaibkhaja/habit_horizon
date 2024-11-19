import "package:flutter/material.dart";

void main() {
  runApp(const HabitHorizon());
}

class HabitHorizon extends StatelessWidget {
  const HabitHorizon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Habit Horizo ', home: AppHomePage(),);
  }
}

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
       
      )
    );
  }
}
