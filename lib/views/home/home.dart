import 'package:flutterapp/views/config.dart';

class Home extends StatelessWidget {

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
                FlatButton(
                  color: MainButtonStyle.background,
                  splashColor: MainButtonStyle.splashColor,
                  //highlightColor: Colors.cyan,
                  onPressed: (){
                    Navigator.pushNamed(
                        context,
                        MainRoutes.about
                    );
                  },
                  child: Text(
                    "Hakkımızda",
                    style: MainButtonStyle.textStyle,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
