import "package:flutter/material.dart";
import "package:habit_horizon/pages/forgot_password_page.dart";
import "package:habit_horizon/pages/login_page.dart";
import "package:habit_horizon/pages/signup_page.dart";
import "package:habit_horizon/widgets/custom_colored_button.dart";

void main() {
  runApp(const HabitHorizon());
}

class HabitHorizon extends StatelessWidget {
  const HabitHorizon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Habit Horizo ',
      home: SignUpPage(),
    );
  }
}

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomColoredButton(
          buttonText: 'Sign up',
          onTap: () {},
        ),
      ),
    );
  }
}
