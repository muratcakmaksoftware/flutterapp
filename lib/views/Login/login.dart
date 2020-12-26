import 'package:flutterapp/utils/device_info.dart';
import 'package:flutterapp/views/config.dart';

class Login extends StatelessWidget {

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
                width: 250.0,
                height: 191.0,
                fit: BoxFit.fill,
                image: AssetImage('assets/auth/background.png')
            ),
            Text(
              "sadas",
              style: customTextStyle,
            )
          ],
        ),
      )

    );
  }
}
