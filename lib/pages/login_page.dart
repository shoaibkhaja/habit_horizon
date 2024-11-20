import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_horizon/pages/forgot_password_page.dart';
import 'package:habit_horizon/pages/signup_page.dart';
import 'package:habit_horizon/utils/app_colours.dart';
import 'package:habit_horizon/widgets/custom_colored_button.dart';
import 'package:habit_horizon/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
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
                  top: 40,
                  left: 16,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            const Text(
              "Log In",
              style: TextStyle(fontSize: 33, color: AppColours.primaryColour),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextfield(
                hintText: "Enter Your Email",
                labelText: "Email",
                prefixIcon:
                    Image.asset("assets/signup_and_login_page/mail_icon.png")),
            const SizedBox(
              height: 40,
            ),
            CustomTextfield(
                hintText: "Enter Your Password",
                labelText: "Password",
                prefixIcon: Image.asset(
                  "assets/signup_and_login_page/key_icon.png",
                )),
            Padding(
              padding: const EdgeInsets.only(
                  right: 16.0), // Adjust the value as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return const ForgotPasswordPage();
                      }));
                    },
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: AppColours.primaryColour,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomColoredButton(buttonText: "Log In", onTap: () {}),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  const Text(
                    "Don't have an Account!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return const SignUpPage();
                        }));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: AppColours.primaryColour),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
