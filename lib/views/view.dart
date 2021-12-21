import 'package:flutter/material.dart';
import 'package:scroll_project/widgets/responsive.dart';

import 'home_views/desktop/view.dart';
import 'home_views/mobile/view.dart';
import 'home_views/tablet/view.dart';




class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  Responsive(
       desktop: DeskTopView(),
        tablet: TabletView(),
        mobile: MobileView(),
      ),
    );
  }
}
