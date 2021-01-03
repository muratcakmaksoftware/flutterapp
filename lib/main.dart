import 'package:flutterapp/views/config.dart';
import 'package:flutterapp/routes/main_router.dart';


void main() {
  runApp(
      MainApp()
  );
}

class MainApp extends StatefulWidget {

  //Diğer görünümlerden dil değiştirilirse kullanmak amaçlı
  static void setLocale(BuildContext context, Locale locale){
    MainAppState state = context.findAncestorStateOfType<MainAppState>(); //MainAppState deki fonksiyonlara ve state erişmek için
    state.setLocale(locale);
  }

  @override
  MainAppState createState() => new MainAppState();
}

class MainAppState extends State<MainApp> {
  Locale _locale = SupportLanguage.tr; //default dilin atanması.

  void setLocale(Locale locale){
    setState((){
      _locale = locale;
    });
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
      locale: _locale , //başlangıç dilin atanması
      supportedLocales: [
        SupportLanguage.tr,
        SupportLanguage.en,
      ],
      /*localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
        return locale;
      },*/
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MainRouter.generateRoute,
      initialRoute: MainRoutes.auth, //Başlangıç route
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Login()
    );
  }

}