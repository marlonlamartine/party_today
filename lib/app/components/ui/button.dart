import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;

  const Button(
      {super.key,
      required this.label,
      this.onPressed,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: const Color(0xFFFF794F),
        ),
        child: Text(label),
      ),
    );
  }
}
