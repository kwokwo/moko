import 'package:flutter/material.dart';
import 'package:youlanka_flutter/models/index.dart';
import 'package:youlanka_flutter/states/profile.dart';

class LocaleState extends ProfileChangeNotifier {
  // 获取当前用户的APP语言配置Locale类，如果为null，则语言跟随系统语言
  Profile _profile = ProfileChangeNotifier.profile;
  String get locale => _profile.locale;
  Locale getLocale() {
    if (_profile.locale == null) return null;
    var _locale = _profile.locale.split("_");
    return Locale(_locale[0], _locale[1]);
  }

  set locale(String locale) {
    if (locale != _profile.locale) {
      _profile.locale = locale;
      notifyListeners();
    }
  }
}
