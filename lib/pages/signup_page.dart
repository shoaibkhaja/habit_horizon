import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_horizon/utils/app_colours.dart';
import 'package:habit_horizon/widgets/custom_colored_button.dart';
import 'package:habit_horizon/widgets/custom_textfield.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextfield(
                hintText: "Enter Your UserName",
                labelText: "User Name",
                prefixIcon: SvgPicture.asset(
                  "assets/signup_and_login_page/user_icon.svg",
                  height: 10,
                  width: 10.00,
                )),
            const SizedBox(
              height: 20,
            ),
            const CustomTextfield(
                hintText: "Enter Your Email",
                labelText: "Email",
                prefixIcon: Icon(Icons.mail_outline_sharp)),
            const SizedBox(
              height: 20,
            ),
            CustomTextfield(
              hintText: "Enter Your Password",
              labelText: "Password",
              prefixIcon: SvgPicture.asset(
                'assets/signup_and_login_page/key_icon.svg',
                height: 10,
                width: 10,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextfield(
                hintText: "Confirm Your Password",
                labelText: "Confirm Password",
                prefixIcon: Icon(Icons.key)),
            const SizedBox(
              height: 25,
            ),
            CustomColoredButton(buttonText: "Sign In", onTap: () {})
          ],
        ),
      ),
    );
  }
}
