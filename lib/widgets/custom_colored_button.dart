import "package:flutter/material.dart";
import "package:habit_horizon/utils/app_colours.dart";

class CustomColoredButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;

  const CustomColoredButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 238,
      height: 40,
      child: FilledButton(
        style: FilledButton.styleFrom(backgroundColor: AppColours.primaryColour),
        onPressed: onTap,
        child: Text(
          buttonText,
          style: const TextStyle(
            color: AppColours.whiteText,
            fontSize: 14.00,
          ),
        ),
      ),
    );
  }
}
