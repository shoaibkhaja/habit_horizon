import "package:flutter/material.dart";
import "package:habit_horizon/pages/forgot_password_page.dart";
import "package:habit_horizon/pages/home_page.dart";
import "package:habit_horizon/pages/login_page.dart";
import "package:habit_horizon/pages/signup_page.dart";
import "package:habit_horizon/pages/user_profile_page.dart";
import "package:habit_horizon/pages/verficationscreen.dart";
import "package:habit_horizon/widgets/custom_textfield.dart";

void main() {
  runApp(const HabitHorizon());
}

class HabitHorizon extends StatelessWidget {
  const HabitHorizon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Habit Horizon', home: UserProfilePage());
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
