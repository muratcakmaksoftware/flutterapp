import 'package:flutter/material.dart';

//Views
import 'package:flutterapp/views/about/about.dart';
import 'package:flutterapp/views/home/home.dart';
import 'package:flutterapp/views/login/login.dart';

import 'package:flutterapp/routes/route_names.dart';

class MainRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainRoutes.home:
        return MaterialPageRoute(builder: (_) => Home());
      case MainRoutes.auth:
        return MaterialPageRoute(builder: (_) => Login());
      case MainRoutes.about:
        return MaterialPageRoute(builder: (_) => About());
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
