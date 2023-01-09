import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final double? width;
  final double? height;
  final ButtonStyle style;
  final VoidCallback? onPressed;

  const Button({
    super.key,
    required this.label,
    this.onPressed,
    this.width,
    this.height,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: Text(label),
      ),
    );
  }
}
