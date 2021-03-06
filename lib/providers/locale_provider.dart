import 'package:flutter/material.dart';
import 'package:ladorg/l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale= Locale('en');

  Locale get locale => _locale!;

  void setLocale(Locale locale) {
    if (!l10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = Locale('en');
    notifyListeners();
  }
}