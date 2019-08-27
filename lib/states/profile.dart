import 'package:flutter/material.dart';
import 'package:youlanka_flutter/common/global.dart';
import 'package:youlanka_flutter/models/index.dart';

/*
 *  ProfileChangeNotifier
 * 初始化profile状态
 *  */
class ProfileChangeNotifier extends ChangeNotifier {
  static Profile profile = Global.profile;
  @override
  void notifyListeners() {
    Global.saveProfile(); //保存Profile变更
    super.notifyListeners(); //通知依赖的Widget更新
  }
}
