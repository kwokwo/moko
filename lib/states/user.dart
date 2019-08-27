import 'package:youlanka_flutter/models/index.dart';
import 'package:youlanka_flutter/states/profile.dart';

class UserState extends ProfileChangeNotifier {
  Profile _profile = ProfileChangeNotifier.profile;
  User get user => _profile.user;
  // 是否登录
  bool get isLogin => user != null;
  set user(User user) {
    if (user?.id != _profile.user?.id) {
      // 如果id不同，则更新信息
      _profile.user = user;
      notifyListeners();
    }
  }
}
