import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static const Color maxPayJungleGreen = Color(0xFF1F896A);
  static const Color maxPayYellow = Color(0xFFF8E618);
  static const Color maxPayDarkBlue = Color(0xFF0F132C);
  static const Color maxPayGreen = Color(0xFF018837);
  static const Color maxPayRed = Color(0xFFFF0000);
  static const Color maxPayWhite = Color(0xFFFFFFFF);
}

class Palette {
  static const MaterialColor primary = const MaterialColor(
    0xFF1F896A, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xFF1c7b5f), //10%
      100: const Color(0xFF196e55), //20%
      200: const Color(0xFF16604a), //30%
      300: const Color(0xFF135240), //40%
      400: const Color(0xFF104535), //50%
      500: const Color(0xFF0c372a), //60%
      600: const Color(0xFF092920), //70%
      700: const Color(0xFF061b15), //80%
      800: const Color(0xFF030e0b), //90%
      900: const Color(0xFF000000), //100%
    },
  );
}
