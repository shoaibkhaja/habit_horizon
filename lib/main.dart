import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:habit_horizon/pages/forgot_password_page.dart";
import "package:habit_horizon/widgets/custom_colored_button.dart";
import "package:habit_horizon/widgets/custom_outlined_button_with_icon.dart";
import "package:habit_horizon/widgets/custom_textfield.dart";

void main() {
  runApp(const HabitHorizon());
}

class HabitHorizon extends StatelessWidget {
  const HabitHorizon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Habit Horizo ',
      home: ForgotPasswordPage(),
    );
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
