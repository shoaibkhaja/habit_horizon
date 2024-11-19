import 'package:flutter/material.dart';
import 'package:habit_horizon/utils/app_colours.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 260,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/welcome_page/upper_design.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 40, // Adjust for spacing
                left: 16, // Adjust for spacing
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context); // Navigate back
                  },
                ),
              ),
              // Rest of the content
            ],
          ),
          const Text(
            "Sign Up",
            style: TextStyle(fontSize: 33, color: AppColours.primaryColour),
          )
        ],
      ),
    );
  }
}
