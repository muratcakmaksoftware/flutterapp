import 'package:flutter/material.dart';
import 'package:flutterapp/core/auth/login.dart';
import 'package:flutterapp/views/config.dart';

import 'package:flutterapp/views/home/home.dart';
import 'package:flutterapp/views/login/login.dart';

void main() {
  runApp(CustomMaterialApp(
      MainApp()
    )
  );
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    DeviceInfo.setValues(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height); //Device set Width / Height
    //print("${DeviceInfo.deviceWidth} - ${DeviceInfo.deviceHeight}");
    bool isAuthenticated = LoginController.auth("", "");
    return isAuthenticated ? Home() : Login();
  }

}