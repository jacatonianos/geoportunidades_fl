import 'package:flutter/material.dart';
import 'package:geoportunidades/containers/screen_selector.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    var fontSize2 = 60.0;
    return Scaffold(
      bottomNavigationBar: ScreenSelector(),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Home Screen',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize2
          ),
        ),
      )
    ); 
  }
}