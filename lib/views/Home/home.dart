import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
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
