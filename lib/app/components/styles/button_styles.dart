import 'package:party_today/app/components/styles/color_styles.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  ButtonStyles._();

  static ButtonStyles get instance {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get orangeButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: ColorStyles.instance.primary,
      );

  ButtonStyle get googleButton => ElevatedButton.styleFrom();
}

extension ButtonStylesExtensions on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.instance;
}
