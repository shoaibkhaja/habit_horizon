import 'package:flutter/material.dart';
import 'package:habit_horizon/pages/user_profile_page.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: const Text("Settings"),
        ),
        body: ListView(
          children: [
            SettingItem(
              icon: Icons.account_circle,
              title: "Account",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return UserProfilePage();
                }));
              },
            ),
            SettingItem(
              icon: Icons.notifications,
              title: "Notifications",
              onTap: () {},
            ),
            SettingItem(
              icon: Icons.description,
              title: "Terms & Conditions",
              onTap: () {},
            ),
            SettingItem(
              icon: Icons.lock,
              title: "Privacy Policy",
              onTap: () {},
            ),
            SettingItem(
              icon: Icons.info,
              title: "About",
              onTap: () {},
            ),
            SettingItem(
              icon: Icons.logout,
              title: "Log out",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SettingItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
        onTap: onTap,
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      ),
    );
  }
}
