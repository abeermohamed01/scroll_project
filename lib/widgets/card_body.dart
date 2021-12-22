// import 'package:flutter/material.dart';
// import 'package:scroll_project/models/model_page1.dart';
//
// class CardBody extends StatelessWidget {
//   final double _width = 300;
//   Function onTap;
//   Function onPress;
//   Color color;
//   Color color2;
//   final controller = ScrollController();
//  CardBody({this.color, this.color2, this.onTap, this.onPress});
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         IconButton(
//             onPressed: onTap,
//             icon: Icon(Icons.arrow_back_ios, size: 30, color: color)),
//         Container(
//           margin: EdgeInsets.all(5),
//           width: MediaQuery.of(context).size.width - 160,
//           height: 200,
//           child: ListView.builder(
//               itemCount: cardList.length,
//               controller: controller,
//               scrollDirection: Axis.horizontal,
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemBuilder: (_, i) => Padding(
//                     padding: const EdgeInsets.only(left: 40),
//                     child: Container(
//                       width: _width,
//                       height: 120,
//                       decoration: BoxDecoration(
//                           color: Colors.grey[800],
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(5),
//                               topRight: Radius.circular(5))),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             CardViewModel(cardList[i]).text,
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w200),
//                           ),
//                           SizedBox(
//                             height: 80,
//                           ),
//                           Text(
//                             CardViewModel(cardList[i]).title,
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w200),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )),
//         ),
//         IconButton(
//             onPressed: onPress,
//             icon: Icon(
//               Icons.arrow_forward_ios,
//               size: 30,
//               color:color2,
//             ))
//       ],
//     );
//   }
// }
