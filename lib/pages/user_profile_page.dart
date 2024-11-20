import 'package:flutter/material.dart';
import 'package:habit_horizon/pages/home_page.dart';
import 'package:habit_horizon/widgets/custom_colored_button.dart';
import 'package:habit_horizon/widgets/custom_textfield.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Bio-Data',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/signup_and_login_page/user_image.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const Text(
                    "Shoaib",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Sh@gmail.com",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Want to change your UserName?",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 100, 100, 100)),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomTextfield(
                  hintText: "Enter New UserName",
                  labelText: "New UserName",
                  prefixIcon: Image.asset(
                    "assets/signup_and_login_page/user_icon.png",
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Want to change your Password?",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 100, 100, 100)),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomTextfield(
                  hintText: "Enter New Password",
                  labelText: "New Password",
                  prefixIcon: Image.asset(
                    "assets/signup_and_login_page/key_icon.png",
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Center(
                  child: CustomColoredButton(
                      buttonText: "Save",
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return const HomePage();
                        }));
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
