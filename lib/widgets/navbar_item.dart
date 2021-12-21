
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scroll_project/models/item_model.dart';
import 'package:scroll_project/services/navigation_service.dart';
import '../../locator.dart';



class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
   NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,

    );
    return GestureDetector(
      onTap: () {

        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey,
               borderRadius: BorderRadius.circular(5),
          ),          
          child: Center(child: Text(title , style: TextStyle(color: Colors.white),),),
        ),
      ),
    );
  }
}