import 'package:flutter/material.dart';
double getDeviceScreenWidth(context, percantage){
  double deviceWidth = MediaQuery.of(context).size.width * percantage;
  return deviceWidth * (percantage / 100);
}

double getDeviceScreenHeight(context, percantage){
  double deviceHeight = MediaQuery.of(context).size.height * percantage;
  return deviceHeight * (percantage / 100);
}