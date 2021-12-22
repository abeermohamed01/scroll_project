import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_project/providers/scroll_provider.dart';

class MyController {
  final controller = ScrollController();
  final ScrollProvider scrollProvider;

  MyController(this.scrollProvider);

  void scrollPlus() {
    print(scrollProvider.index);
    scrollProvider.index += 340;
    _animateToIndex(scrollProvider.index);
    print(scrollProvider.index);
    scrollProvider.toggle();
  }

  void scrollMinus() {
    print(scrollProvider.index);
    scrollProvider.index -= 350;
    _animateToIndex(scrollProvider.index);
    print(scrollProvider.index);
    scrollProvider.toggle();
  }

  _animateToIndex(double index) => controller.animateTo(index,
      duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
}
