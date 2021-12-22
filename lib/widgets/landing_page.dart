import 'package:flutter/material.dart';
import 'package:scroll_project/views/home_views/desktop/desktop_view.dart';
import 'package:scroll_project/views/pages/about.dart';
import 'package:scroll_project/views/pages/help.dart';
import 'package:scroll_project/views/pages/settings.dart';

import 'navbar_item.dart';


class LandingPage extends StatefulWidget {
  final String page;
  final String extra;

  const LandingPage({Key key, this.page, this.extra}) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}
List<String> pages = [
  'home',
  'about',
  'settings',
  'help',
];

List<IconData> icons = [
  Icons.home,
  Icons.person_rounded,
  Icons.settings_rounded,
  Icons.help_rounded,
];
class _LandingPageState extends State<LandingPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.1,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: icons.map((e) {
                  return NavItem(
                    selected: icons.indexOf(e) == pages.indexOf(widget.page),
                    icon: e,
                    onTap: (){
                      if(icons.indexOf(e)==1){
                        Navigator.pushNamed(context, '/main/${pages[icons.indexOf(e)]}');
                      }else{
                        Navigator.pushNamed(context, '/main/${pages[icons.indexOf(e)]}');
                      }
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.9,
                color: Colors.black,
                child: IndexedStack(
                  index: pages.indexOf(widget.page),
                  children: [
                    Home(),
                    About(widget.extra),
                    Settings(),
                    Help(),

                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
  }



