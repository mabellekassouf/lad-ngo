import 'package:flutter/material.dart';

class l10n{
  static final all = [
    const Locale('en'),
    const Locale('ar'),
    // const Locale('fr'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'ar':
        return 'AR';
      // case 'fr':
      //   return 'FR';
      case 'en':
      default:
        return 'EN';
    }
  }
}