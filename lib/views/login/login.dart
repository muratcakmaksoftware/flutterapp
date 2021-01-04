import 'package:email_validator/email_validator.dart';
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
  final TextEditingController _txteditPhoneController = TextEditingController();

  final TextEditingController _txteditRegUsernameController = TextEditingController();
  final TextEditingController _txteditRegPasswordController = TextEditingController();
  final TextEditingController _txteditRegEmailController = TextEditingController();

  void initState() {
    super.initState();
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


  final _formRegisterKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    DeviceInfo.setValues(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height); //Device set Width / Height
    //print("${DeviceInfo.deviceWidth} - ${DeviceInfo.deviceHeight}");

    /*bool isAuthenticated = LoginController.auth("", "");
    return isAuthenticated ? Home() : Login();*/
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, //appbar arkaplanı saydam yapma.
        elevation: 0.0,//appbar arkaplanını body ile birleştirme
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: LanguageList()
          )
        ],
      ),
      extendBodyBehindAppBar: true, //appbar arkaplanını body ile birleştirme
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
                width: getDeviceWidthPrecantage(45), //ekranın %70 lik genişlik verir.
                height: 150.0,
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
              height: 350,
                child:PageView(
                  onPageChanged: _onChangePage,
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
                        color: MainStyle.boxBackgroundColor,
                        padding: EdgeInsets.all(20),
                        child:SingleChildScrollView(
                          child: Form(
                            key: _formRegisterKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return AppLocalizations.of(context).reg_username_valid;
                                    }
                                    return null;
                                  },
                                  controller: _txteditRegUsernameController,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.account_box),
                                    labelText: AppLocalizations.of(context).reg_username,
                                    hintText: AppLocalizations.of(context).reg_username,
                                  ),
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return AppLocalizations.of(context).reg_password_valid;
                                    }
                                    return null;
                                  },
                                  controller: _txteditRegPasswordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.lock),
                                    labelText: AppLocalizations.of(context).reg_password,
                                    hintText: AppLocalizations.of(context).reg_password,
                                  ),
                                ),
                                TextFormField(
                                  controller: _txteditRegEmailController,
                                  validator: (value) => EmailValidator.validate(value) ? null : AppLocalizations.of(context).reg_mail_valid,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.mail_outline),
                                    labelText: AppLocalizations.of(context).reg_mail,
                                    hintText: AppLocalizations.of(context).reg_mail,
                                  ),
                                ),
                                FlatButton(
                                  color: MainButtonStyle.background,
                                  splashColor: MainButtonStyle.splashColor,
                                  onPressed: (){
                                    if (_formRegisterKey.currentState.validate()) {
                                      print("okk");
                                    }
                                  },
                                  child: Text(
                                    AppLocalizations.of(context).login_tab_register,
                                    style: MainButtonStyle.textStyle,
                                  ),
                                ),

                              ],
                            ),
                          )
                        )

                    ),
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
