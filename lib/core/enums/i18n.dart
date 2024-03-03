import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

enum I18n {
  en(Locale('en', 'US')),
  zh(Locale('zh', 'CN')),
  ja(Locale('ja', 'JP'));

  const I18n(this.locale);

  final Locale locale;

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
