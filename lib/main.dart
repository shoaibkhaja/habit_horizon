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
<<<<<<< HEAD
      body: Center(
          child: CustomTextfield(
              hintText: 'Enter your user name',
              labelText: 'User Name',
              prefixIcon: Icon(Icons.verified_user))),
=======
      body: const Center(
       
      )
>>>>>>> 94c0a77e36b2fd2fa69f766e2c8a90f4d6354b84
    );
  }
}
