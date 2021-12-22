import 'package:flutter/material.dart';
import 'package:scroll_project/widgets/responsive.dart';

import 'home_views/desktop/desktop_view.dart';
import 'home_views/mobile/view.dart';
import 'home_views/tablet/view.dart';




class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Responsive(
       desktop: Home(),
        tablet: TabletView(),
        mobile: MobileView(),
      ),
    );
  }
}
