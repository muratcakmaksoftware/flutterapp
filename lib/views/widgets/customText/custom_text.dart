import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle style;
  CustomText(this.text, {this.style}){
      //
  }

  @override
  Widget build(BuildContext context) {

    return Text(this.text,
        style: this.style ?? TextStyle(fontSize: 16)
    );
  }
}
