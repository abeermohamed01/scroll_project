import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollProvider extends ChangeNotifier {
  double index = 40;
   // bool _loading = false;
   //
   // bool get loading => _loading;
   // setLoading(bool loading)async{
   //   _loading = loading;
   //   notifyListeners();
   // }
  bool isLoading = true;

  Future loading() async {
    await Future.delayed(Duration(seconds: 3)).then((value) => {
    isLoading = false,
    });
    notifyListeners();
  }
  double toggle() {
    notifyListeners();
    return index;
  }
}
