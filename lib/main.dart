import "package:flutter/material.dart";

void main(){
  runApp(const HabitHorizon());
}
class HabitHorizon extends StatelessWidget{
  const HabitHorizon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Horizon App',
    )
  }
}