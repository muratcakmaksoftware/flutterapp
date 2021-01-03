import 'package:flutter/material.dart';

class MainStyle{
  //Color (00(transparent)00(R)00(G)00(B)
  static const boxBackgroundColor = Color(0xFFFFFFFF);

}

//final TextStyle defaultTextStyle = new TextStyle(fontSize: 17, color: Colors.white, decoration: TextDecoration.none);

class CustomColors {

  const CustomColors();

  static const Color loginGradientStart = Color(0xFFfbab66);
  static const Color loginGradientEnd = Color(0xFFf7418c);

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

class MainButtonStyle{
  static const background = Color(0xF1D83C00);
  static const splashColor = Colors.cyan;
  static const TextStyle textStyle = TextStyle(fontSize: 17, color: Colors.white, decoration: TextDecoration.none);

  static const backgroundSelected = Colors.cyan;
}

class MainTextStyle{
  static const TextStyle textStyle = TextStyle(fontSize: 17, color: Colors.black, decoration: TextDecoration.none);
}