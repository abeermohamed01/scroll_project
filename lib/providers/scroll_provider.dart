import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollProvider extends ChangeNotifier {
  double index = 40;

  double toggle() {
    notifyListeners();
    return index;
  }
}
