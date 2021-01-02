import 'package:flutterapp/views/config.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).app_name),
        ),
        body: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("XXX"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
