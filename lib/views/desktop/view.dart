import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scroll_project/controller/controller.dart';
import 'package:scroll_project/models/model.dart';
import 'package:scroll_project/providers/scroll_provider.dart';

class DeskTopView extends StatelessWidget {
  final double _width = 300;

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final controller = MyController(scrollProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    controller.scrollMinus();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color:scrollProvider.index<=40?Colors.black: Colors.white70,
                  )),
              Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width - 160,
                height: 200,
                child: ListView.builder(
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
                        )),
              ),
              IconButton(
                  onPressed: () {
                    controller.scrollPlus();
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                    color:scrollProvider.index>=1360?Colors.black: Colors.white70,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
