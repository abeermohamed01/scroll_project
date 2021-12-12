import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.only(topLeft: Radius.circular(5) , topRight: Radius.circular(5))
      ),
      child: Center(child: Text('This is Text This is Text' , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.w200),)),
    );
  }
}
