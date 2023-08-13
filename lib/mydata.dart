import 'package:flutter/foundation.dart';

class MyData with ChangeNotifier {
  double _value = 0.5;
  double _value2 = 0.5;
  // getter
  double get value => _value;
  // setter
  set value(double value) {
    _value = value;
    // ChangeNotifierをMixinすることで、このメソッドを使えるようになる
    // リスナーに変更を通知する
    notifyListeners(); // 通知
  }

  // getter
  double get value2 => _value2;
  set value2(double value) {
    _value2 = value;
    notifyListeners();
  }
}
