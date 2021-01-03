import 'package:flutter/material.dart';
import 'package:flutterapp/l10n/language_support.dart';
import 'package:flutterapp/main.dart';

// ignore: must_be_immutable
class LanguageList extends StatelessWidget {

  LanguageList(){
    //
  }

  @override
  Widget build(BuildContext context) {

    void _changeLanguage(Language language){
      switch(language.languageCode){
        case "tr":
          MainApp.setLocale(context, SupportLanguage.tr);
          break;

        case "en":
          MainApp.setLocale(context, SupportLanguage.en);
          break;

        default:
          MainApp.setLocale(context, SupportLanguage.tr);
          break;
      }
    }

    return DropdownButton(
      onChanged: (Language language){
        _changeLanguage(language);
      },
      underline: SizedBox(),
      icon: Icon(
        Icons.language,
        color: Colors.white,
      ),
      items: Language.languageList()
          .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
              value: lang,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(lang.name),
                  Text(lang.flag),
                ],
              ),
            ))
          .toList(),
    );
  }
}
