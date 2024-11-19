import "package:flutter/material.dart";
import "package:habit_horizon/screen/sign_up.dart";

void main() {
  runApp(const HabitHorizon());
}

class HabitHorizon extends StatelessWidget {
  const HabitHorizon({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return const MaterialApp(title: 'Habit Horizo', home: SignUpScreen());
=======
    return const MaterialApp(
      title: 'Habit Horizon App',
      home: AppHomePage(),
    );
  }
}

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        
      ),
    );
>>>>>>> 711b9f3ab22ebd425389109473b5c901f8b15e9e
  }
}
