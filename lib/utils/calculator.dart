import 'package:flutter/material.dart';
import 'package:flutterapp/utils/device_info.dart';
double getDeviceWidthPrecantage(percantage){
  return DeviceInfo.deviceWidth * (percantage / 100);
}

double getDeviceHeightPrecantage(percantage){
  return DeviceInfo.deviceHeight * (percantage / 100);
}
