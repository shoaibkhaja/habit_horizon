import 'package:flutter/material.dart';
import 'package:habit_horizon/pages/home_page.dart';
import 'package:habit_horizon/pages/user_profile_page.dart';
import 'package:habit_horizon/pages/habit_page.dart';
import 'package:habit_horizon/pages/statistics_page.dart';
import 'package:habit_horizon/utils/app_colours.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const HomePage(), // Home screen
    const HabitPage(), // Habit screen
    const StatisticsPage(), // Statistics screen
    const UserProfilePage(), // Profile screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: 'Habit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: AppColours.primaryColour,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
