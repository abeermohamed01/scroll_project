import 'package:flutter/material.dart';

class MobileView extends StatefulWidget {

  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final _controller = ScrollController();
  final double _width = 300;
  double index = 40;
  @override
  Widget build(BuildContext context) {
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
                    setState(() {
                      print(index);
                      index = index - 340;
                      _animateToIndex();
                      print(index);
                    });
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: index <= 40 ? Colors.black : Colors.white70,
                  )),
              Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width - 160,
                height: 200,
                child: ListView.builder(
                    itemCount: 10,
                    controller: _controller,
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
                        child: Center(
                            child: Text(
                              'This is Text This is Text$i',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200),
                            )),
                      ),
                    )),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      print(index);
                      index = index + 300;
                      _animateToIndex();
                      index = index + 40;

                      print(index);
                    });
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                    color: index >= 2080 ? Colors.black : Colors.white70,
                  )),
            ],
          ),
        ),
      ],
    );
  }

  _animateToIndex() => _controller.animateTo(index,
      duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
}
