import 'package:flutter/material.dart';
import 'package:scroll_project/views/tablet/view.dart';
import 'package:scroll_project/widgets/responsive.dart';

import 'desktop/view.dart';
import 'mobile/view.dart';


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
