import 'package:flutter/material.dart';

import 'package:flutterapp/l10n/language.dart'; //dil kütüphane
import 'package:flutterapp/main_router.dart'; //router

// ignore: must_be_immutable
class CustomMaterialApp extends StatelessWidget {

  Widget home;
  CustomMaterialApp(this.home){
    //
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
        title: 'Flutter App',
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('tr', 'TR'),
        ],
        debugShowCheckedModeBanner: false,
        onGenerateRoute: MainRouter.generateRoute,
        //initialRoute: isAuthenticated ? MainRoutes.app : MainRoutes.auth,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold( //material görmesi için örnek textfield gereklidir.
            body: this.home
        ),
    );
  }
}


