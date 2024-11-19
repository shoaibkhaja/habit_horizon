import "package:flutter/material.dart";
import "package:habit_horizon/pages/sign_up.dart";

void main() {
  runApp(const HabitHorizon());
}

class HabitHorizon extends StatelessWidget {
  const HabitHorizon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Habit Horizo', home: SignUpScreen());
  }
}

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CustomTextfield(
              hintText: 'Enter your user name',
              labelText: 'User Name',
              prefixIcon: Icon(Icons.verified_user))),
    );
  }
}
