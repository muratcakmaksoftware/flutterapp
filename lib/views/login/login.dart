import 'package:flutterapp/views/config.dart';
//import 'package:flutterapp/utils/device_info.dart';
import 'package:flutterapp/utils/calculator.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => new LoginState();
}

class LoginState extends State<Login> {

  Login(){
    //print("${DeviceInfo.deviceWidth} - ${DeviceInfo.deviceHeight}");
  }
  PageController _pageController;
  TextEditingController _txteditPhoneController;

  void initState() {
    super.initState();
    _txteditPhoneController = TextEditingController();
    _pageController = PageController(
        initialPage: 0,
      // scrollDirection: Axis.vertical,
    );
  }

  void dispose() {
    _txteditPhoneController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomMaterialApp(
      Container( //içerik
        decoration: BoxDecoration( //Arka plan rengi
          gradient: LinearGradient(
              colors: [Color(0xFFfbab66), Color(0xFFf7418c)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp
          ),
        ),
        child: Column( //Satırsal sıralama
          //mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center, // Ortalama
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Padding(padding: null),
            Image(
                width: getDeviceWidthPrecantage(70), //ekranın %70 lik genişlik verir.
                height: 200.0,
                fit: BoxFit.fill,
                image: AssetImage('assets/auth/background.png')
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: FlatButton(
                      color: CustomButtonStyle.background,
                      splashColor: Colors.cyan,
                      //highlightColor: Colors.cyan,
                      onPressed: (){
                        _onChangePage(0);
                      },
                      child: Text(
                        AppLocalizations.of(context).login_tab_logged_in,
                        style: defaultTextStyle,
                      ),
                    ),
                  )
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: FlatButton(
                      color: CustomButtonStyle.background,
                      splashColor: CustomButtonStyle.splashColor,
                      //highlightColor: Colors.cyan,
                      onPressed: (){
                        _onChangePage(1);
                      },
                      child: Text(
                        AppLocalizations.of(context).login_tab_register,
                        style: defaultTextStyle,
                      ),
                    ),
                  )
                ),
              ],
            ),
            Container(
              child: Expanded(
                child:PageView(
                  controller: _pageController,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child:  TextField(
                        controller: _txteditPhoneController,
                        decoration: InputDecoration(
                          hintText: AppLocalizations.of(context).login_input_username_hint,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Register",
                        style: defaultTextStyle,
                      ),
                    )
                  ],
                )
              )
            )

          ],
        ),
      )

    );
  }

  void _onChangePage(index) {
    /*Navigator.pushNamed(
      context, MainRoutes.home,
    );*/
    _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }
}
