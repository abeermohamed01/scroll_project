import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scroll_project/controller/controller.dart';
import 'package:scroll_project/models/model.dart';
import 'package:scroll_project/providers/scroll_provider.dart';

class CustomCard extends StatelessWidget {
  final double _width = 300;
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final controller = MyController(scrollProvider);
    return ListView.builder(
        itemCount: cardList.length,
        controller: controller.controller,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_, i) => Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Container(
            width: _width,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  CardViewModel(cardList[i]).text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w200),
                ),
                SizedBox(height: 80,),
                Text(
                  CardViewModel(cardList[i]).title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
        ));
  }
}
