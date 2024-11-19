import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:habit_horizon/widgets/custom_outlined_button_with_icon.dart";

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
