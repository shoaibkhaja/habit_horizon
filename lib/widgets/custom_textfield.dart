import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Widget prefixIcon;
  final Widget? suffixIcon;

  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 55,
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.00)),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 20.00, color: Colors.black),
        ),
      ),
    );
  }
}
