import 'package:flutter/material.dart';
import 'package:flutterapp/views/home/home.dart';
import 'package:flutterapp/views/login/login.dart';

import 'config/routes/main_routes.dart';

class MainRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainRoutes.home:
        return MaterialPageRoute(builder: (context) => Home());
      case MainRoutes.auth:
        return MaterialPageRoute(builder: (context) => Login());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text('Ters giden birşeyler oldu'),
            ),
          ),
        );
    }
  }
}
