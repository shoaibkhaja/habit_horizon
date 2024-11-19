import "package:flutter/material.dart";

class CustomOulinedButton {
  final String buttonText;
  final VoidCallback onTap;

  const CustomOulinedButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
  }) : super();

  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.black, width: 1.5)
      ),
      onPressed: onTap,
      child: Text(buttonText),
    );
  }
}
