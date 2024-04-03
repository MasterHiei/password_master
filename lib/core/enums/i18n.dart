import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

enum I18n {
  en(Locale('en', 'US'), localizedName: 'English'),
  zh(Locale('zh', 'CN'), localizedName: '简体中文'),
  ja(Locale('ja', 'JP'), localizedName: '日本語'),
  ;

  const I18n(this.locale, {required this.localizedName});

  factory I18n.fromLocale(Locale locale) => I18n.values.firstWhere(
        (I18n ele) => ele.locale.languageCode == locale.languageCode,
      );

  final Locale locale;
  final String localizedName;

  static List<Locale> get locales =>
      I18n.values.map((I18n value) => value.locale).toList();

  static Locale get defaultLocal => I18n.en.locale;

  Future<void> enable(BuildContext context) async {
    if (context.locale == locale) {
      return;
    }
    await context.setLocale(locale);
  }
}
