import "package:flutter/material.dart";

class CustomOutlinedButtonWithIcon extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final Widget buttonIcon;

  const CustomOutlinedButtonWithIcon({
    super.key,
    required this.buttonText,
    required this.onTap,
    required this.buttonIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 238,
      height: 40,
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.black, width: 1.5),
        ),
        onPressed: onTap,
        icon: buttonIcon,
        label: Text(
          buttonText,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
