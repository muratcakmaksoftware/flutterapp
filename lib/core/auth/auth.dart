import 'dart:convert';
import 'dart:math';
import 'package:flutterapp/config/api_router.dart';
import 'package:flutterapp/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthController{
  AuthController(){
    //
  }

  static bool auth(username, password){
    return false;
  }

  static bool authRemember(username, password){

  }

  static Future<dynamic> login(String username, String password) async {

    Random rnd = new Random();
    int randomDeviceNumber = rnd.nextInt(10000) + 1000; //1000 to 10000 random number

    final http.Response response = await http.post(
      APIRouter.getApiUrl("login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
        'device_name': randomDeviceNumber.toString()
      }),
    );

    SharedPreferences prefs = await SharedPreferences.getInstance(); //Local Storage mantığında.
    /*if(prefs.containsKey("token")){
      print(prefs.getString("token"));
    }*/

    //print(username + " - "+ password);
    if(response.statusCode == 200){
      final responseData = jsonDecode(response.body);
      if(responseData["status"] == 1){
        final token = responseData["token"];
        User.token = token;
        prefs.setString("token", token);
        //print(responseData);
        return responseData;
      }else{ // status == 0
        //print(responseData);
        return responseData;
      }

    }else{
      print("Error 500");
      final Map responseData = {
        'status': 0,
        'message': "Error 500",
      };
      return responseData;
    }

  }

  static bool register(username, password){

    return false;
  }

}