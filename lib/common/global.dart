import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youlanka_flutter/models/index.dart';

const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red
];

class Global {
  static SharedPreferences _prefs;
  static Profile profile = Profile();
// 网络缓存对象 对请求的数据是否缓存数据对象以保证下次访问速度
  // static NetCache netCache = NetCache();
  // 可选主题列表
  static List<MaterialColor> get themes => _themes;
  // 初始化全局信息, APP初始化时执行
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
    var _profile = _prefs.getString('profile');
    if (_profile != null) {
      try {
        profile = Profile.fromJson(jsonDecode(_profile));
      } catch (e) {
        print(e);
      }
    }
    // 如果没有缓存策略，设置默认缓存策略
    profile.cache = profile.cache ?? CacheConfig()
      ..enable = true
      ..maxAge = 3600
      ..maxCount = 100;
  }

  // 持久化Profile信息 存储用户等信息
  static saveProfile() =>
      _prefs.setString("profile", jsonEncode(profile.toJson()));
}
