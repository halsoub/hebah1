import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwapNameCoontroller extends ChangeNotifier {
  List<String> _name = ["hebah", "laith", "sanad"];
  String _currentName = "Ali";
  String get currentName => _currentName;

  void swapName() {
    final _random = new Random();
    _currentName = _name[_random.nextInt(_name.length)];
    notifyListeners();
  }
}
