import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyController{
  final controller = ScrollController();
  double index = 40;

  void scrollPlus(){
    print(index);
    index = index + 330;
    _animateToIndex();
    print(index);
  }

  void scrollMinus(){
    print(index);
    index = index - 350;
    _animateToIndex();
    print(index);
  }

  _animateToIndex() => controller.animateTo(index,
      duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
}
