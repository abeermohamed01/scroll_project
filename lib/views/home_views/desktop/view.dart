import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scroll_project/controller/controller.dart';
import 'package:scroll_project/models/model_page1.dart';
import 'package:scroll_project/providers/scroll_provider.dart';
import 'package:scroll_project/route/route_name.dart';
import 'package:scroll_project/widgets/loading_indicator.dart';
import 'package:scroll_project/widgets/navbar_item.dart';

class DeskTopView extends StatefulWidget {
  @override
  _DeskTopViewState createState() => _DeskTopViewState();
}

class _DeskTopViewState extends State<DeskTopView> {
  final double _width = 300;

  bool isLoading = true;

  Future loading() async {
    await Future.delayed(Duration(seconds: 3)).then((value) => {
          setState(() {
            isLoading = false;
          })
        });
  }

  @override
  void initState() {
    super.initState();
    loading();
  }

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final controller = MyController(scrollProvider);
    if (isLoading == true) {
      return Center(child: CustomLoading());
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavBarItem(
                  'Page1',
                  Page1,
                ),
                NavBarItem(
                  'Page2',
                  Page2,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 200),
              child:
                  // CardBody(
                  //   onTap: () {
                  //     controller.scrollMinus();
                  //   },
                  //   onPress: () {
                  //     controller.scrollPlus();
                  //   },
                  //   color: scrollProvider.index <= 40 ? Colors.black : Colors.white70,
                  //   color2: scrollProvider.index >= 1360 ? Colors.black : Colors.white70,
                  // ),
                  Row(
                children: [
                  IconButton(
                      onPressed: () {
                        controller.scrollMinus();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: scrollProvider.index <= 40
                            ? Colors.black
                            : Colors.white70,
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
                                    SizedBox(
                                      height: 80,
                                    ),
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
                        color: scrollProvider.index >= 1360
                            ? Colors.black
                            : Colors.white70,
                      )),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
