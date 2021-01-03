import 'package:flutter/material.dart';

class SupportLanguage{
  static const Locale tr = Locale('tr', 'TR');
  static const Locale en = Locale('en', 'US');

}

class Language{
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Language(this.id, this.name, this.flag, this.languageCode){
    //
  }

  static List<Language> languageList(){
    return <Language>[
      Language(1,'Turkey', '🇹🇷', 'tr'),
      Language(2,'English','🇺🇸', 'en')
    ];
  }
}