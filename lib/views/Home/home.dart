import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).home_title),
        ),
        body: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Kullanıcı Adı"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
Widget myLayoutWidget() {
  return Row(
    children: [
      Expanded(child: Icon(Icons.home)),
      Expanded(child: Icon(Icons.home)),
      Expanded(child: Icon(Icons.home)),
      Expanded(child: Icon(Icons.home)),
    ],
  );
}*/
