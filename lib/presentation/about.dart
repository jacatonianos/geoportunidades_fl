import 'package:flutter/material.dart';
import 'package:geoportunidades/containers/screen_selector.dart';
import 'package:geoportunidades/models/screen.dart';

class AboutScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    var fontSize2 = 60.0;
    return Scaffold(
      bottomNavigationBar: ScreenSelector(current: AppScreen.about),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'About Screen',
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