import 'package:flutter/material.dart';

class APIRouter{
  static String serverUrl = "http://192.168.1.102/laravelapi/public/api/"; //Sanal telefondan API

  APIRouter(){
    //
  }

  static String getApiUrl(String api_name){
    switch(api_name){
      case "login":
        return serverUrl+"auth/login";
      case "register":
        return serverUrl+"auth/register";

      default:
        return "testapi";
    }
  }

}