import 'package:flutter/material.dart';
final TextStyle defaultTextStyle = new TextStyle(fontSize: 17, color: Colors.white, decoration: TextDecoration.none);

class CustomColors {

  const CustomColors();

  static const Color loginGradientStart = const Color(0xFFfbab66);
  static const Color loginGradientEnd = const Color(0xFFf7418c);

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

class CustomButtonStyle{
  static const background = Color(0xF1D83C00);
  static const splashColor = Colors.cyan;
}