import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: LoadingIndicator(
        indicatorType: Indicator.lineSpinFadeLoader,

        /// Required, The loading type of the widget
        colors: [
          Colors.white,
          Colors.red,
          Colors.blue,
          Colors.indigo,
          Colors.deepOrange
        ],

        /// Optional, The color collections
        strokeWidth: 1,

        /// Optional, The stroke of the line, only applicable to widget which contains line
        //backgroundColor: Colors.black,      /// Optional, Background of the widget
        //   pathBackgroundColor: Colors.black   /// Optional, the stroke backgroundColor
      ),
    );
  }
}
