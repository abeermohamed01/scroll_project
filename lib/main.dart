import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:scroll_project/views/view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder:  (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          breakpoints: const[
            ResponsiveBreakpoint.resize(350,name: MOBILE),
            ResponsiveBreakpoint.autoScale(600,name: TABLET),
            ResponsiveBreakpoint.resize(800,name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1700,name: 'XL'),
          ]
      ),
      debugShowCheckedModeBanner: false,
      home:HomeView(),
    );
  }
}

