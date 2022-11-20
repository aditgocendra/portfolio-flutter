import 'package:flutter/material.dart';

class UtilityStyle {
  get secondaryLightColor => null;

  InputDecoration inputDecorationDefault(String hint) {
    return InputDecoration(
      fillColor: secondaryLightColor,
      filled: true,
      hintText: hint,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
    );
  }
}
