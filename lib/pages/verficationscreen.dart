import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_horizon/widgets/custom_colored_button.dart'; // Import the flutter_svg package

class Verficationscreen extends StatefulWidget {
  const Verficationscreen({super.key});
  @override
  State<Verficationscreen> createState() {
    return _VerficationscreenState(); // Return the corresponding State class
  }
}

class _VerficationscreenState extends State<Verficationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: const Text(
          'Verification',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        backgroundColor:
            Colors.white, // Ensure the app bar has a white background
        elevation: 0, // Remove shadow for a cleaner design
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 16.0), // Adjust the horizontal margin
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30), // Add spacing from the top
              SvgPicture.asset(
                'assets/forget_password/mail_illustration.svg', // Ensure the path is correct
                height: 180,
                width: 180,
              ),
              const SizedBox(height: 16), // Add spacing between image and text
              const Row(
                children: [
                  Text(
                    'Enter verification code',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8), // Reduced spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  6,
                  (index) => SizedBox(
                    width: 45, // Slightly smaller width
                    height: 45, // Slightly smaller height
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24), // Reduced spacing before the button
              CustomColoredButton(buttonText: "Verify", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
