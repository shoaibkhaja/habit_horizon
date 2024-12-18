import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package
import 'package:habit_horizon/pages/signup_page.dart';
import 'package:habit_horizon/pages/verficationscreen.dart';
import 'package:habit_horizon/widgets/custom_colored_button.dart';
import 'package:habit_horizon/widgets/custom_outlined_button.dart';
import 'package:habit_horizon/widgets/custom_outlined_button_with_icon.dart';
import 'package:habit_horizon/widgets/custom_textfield.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ForgotPasswordPageState();
  }
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
        title: const Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/forget_password/mail_illustration.svg',
                  height: 180,
                  width: 180,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Please enter your Email address to receive verification code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 32),
                CustomTextfield(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  prefixIcon:
                      Image.asset("assets/signup_and_login_page/mail_icon.png"),
                ),
                const SizedBox(height: 32),
                CustomColoredButton(
                    buttonText: "Send",
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return const Verficationscreen();
                      }));
                    }),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Don't have an Account?",
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomOutlinedButton(
                    buttonText: "Sign Up",
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return SignUpPage();
                      }));
                    }),
                const SizedBox(height: 10),
                const Text(
                  "OR",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 127, 126, 126)),
                ),
                CustomOutlinedButtonWithIcon(
                    buttonText: "Google",
                    onTap: () {},
                    buttonIcon: SvgPicture.asset(
                        "assets/welcome_page/google_icon.svg")),
                const SizedBox(height: 18),
                CustomOutlinedButtonWithIcon(
                    buttonText: "Facebook",
                    onTap: () {},
                    buttonIcon: SvgPicture.asset(
                        "assets/welcome_page/facebook_icon.svg"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
