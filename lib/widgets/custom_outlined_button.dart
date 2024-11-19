import "package:flutter/material.dart";

class CustomOulinedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;

  const CustomOulinedButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 238,
      height: 40,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.black, width: 1.5),
        ),
        onPressed: onTap,
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
