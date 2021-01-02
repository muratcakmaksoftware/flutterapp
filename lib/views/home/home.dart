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
                  color: CustomButtonStyle.background,
                  splashColor: Colors.cyan,
                  //highlightColor: Colors.cyan,
                  onPressed: (){
                    Navigator.pushNamed(
                        context,
                        MainRoutes.about
                    );
                  },
                  child: Text(
                    AppLocalizations.of(context).login_tab_logged_in,
                    style: defaultTextStyle,
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
