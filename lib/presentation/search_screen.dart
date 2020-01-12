import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    var fontSize2 = 60.0;
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Search Screen',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontSize2
      ),
  ),);
  }
}