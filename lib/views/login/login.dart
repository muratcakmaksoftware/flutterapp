import 'package:flutterapp/core/auth/login.dart';
import 'package:flutterapp/views/config.dart';
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
  int _pageViewIndex = 0;
  TextEditingController _txteditPhoneController;

  void initState() {
    super.initState();
    _txteditPhoneController = TextEditingController();
    _pageController = PageController(
        initialPage: 0,
      // scrollDirection: Axis.vertical,
    );

    bool isAuthenticated = LoginController.auth("", "");
    print(isAuthenticated);
  }

  void dispose() {
    _txteditPhoneController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    DeviceInfo.setValues(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height); //Device set Width / Height
    //print("${DeviceInfo.deviceWidth} - ${DeviceInfo.deviceHeight}");

    /*bool isAuthenticated = LoginController.auth("", "");
    return isAuthenticated ? Home() : Login();*/
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFfbab66),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: LanguageList()
          )
        ],
      ),
      body:Container( //içerik
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

            Image(
                width: getDeviceWidthPrecantage(50), //ekranın %70 lik genişlik verir.
                height: 200.0,
                fit: BoxFit.fill,
                image: AssetImage('assets/auth/kuryelogo.png')
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: FlatButton(
                        color: _pageViewIndex == 0 ? MainButtonStyle.backgroundSelected : MainButtonStyle.background,
                        splashColor: MainButtonStyle.splashColor,
                        //highlightColor: Colors.cyan,
                        onPressed: (){
                          _onChangePage(0);
                        },
                        child: Text(
                          AppLocalizations.of(context).login_tab_logged_in,
                          style: MainButtonStyle.textStyle,
                        ),
                      ),
                    )
                ),
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: FlatButton(
                        color: _pageViewIndex == 1 ? MainButtonStyle.backgroundSelected : MainButtonStyle.background,
                        splashColor: MainButtonStyle.splashColor,
                        //highlightColor: Colors.cyan,
                        onPressed: (){
                          _onChangePage(1);
                        },
                        child: Text(
                          AppLocalizations.of(context).login_tab_register,
                          style: MainButtonStyle.textStyle,
                        ),
                      ),
                    )
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 300,

                child:PageView(
                  controller: _pageController,
                  children: [
                    Container(
                      color: MainStyle.boxBackgroundColor,
                      padding: EdgeInsets.all(20),
                      child:SingleChildScrollView(
                        child: Column(
                          children: [
                            TextField(
                              controller: _txteditPhoneController,
                              decoration: InputDecoration(
                                hintText: AppLocalizations.of(context).login_input_username_hint,
                              ),
                            ),

                          ],
                        ),
                      )

                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      color: MainStyle.boxBackgroundColor,
                      child: Text(
                        "Register",
                        style: MainTextStyle.textStyle,
                      ),
                    )
                  ],
                )

            )

          ],
        ),
      )
    );

  }

  void _onChangePage(index) {
    //MainApp.setLocale(context, SupportLanguage.en);
    /*Navigator.pushNamed(
      context, MainRoutes.home,
    );*/
    setState(() {
      _pageViewIndex = index;
    });

    print(_pageViewIndex);
    _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }
}
