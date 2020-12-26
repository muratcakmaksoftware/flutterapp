import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Pages
import './views/Login/login.dart';
import 'package:flutterapp/views/Home/home.dart';

import 'package:flutterapp/views/config.dart';
import 'package:flutterapp/utils/device_info.dart';

void main() {
  runApp(CustomMaterialApp(
      MyApp()
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    bool isAuthenticated = false;
    /*double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    DeviceInfo.setValues(deviceWidth, deviceHeight);
    print("${DeviceInfo.deviceWidth} - ${DeviceInfo.deviceHeight}");*/

    return isAuthenticated ? Home() : Login();
  }

}