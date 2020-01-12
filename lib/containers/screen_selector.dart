import 'package:flutter/material.dart';
import 'package:geoportunidades/models/models.dart';
import 'package:geoportunidades/routes.dart';

class ScreenSelector extends StatelessWidget{
  static final bottomButtons = [
    {'icon': Icons.home, 'title': 'Home', 'route': AppRoutes.home},
    {'icon': Icons.search, 'title': 'Search', 'route': AppRoutes.search},
    {'icon': Icons.add, 'title': 'Add', 'route': AppRoutes.addInitiative},
    {'icon': Icons.person, 'title': 'Profile', 'route': AppRoutes.profile},
    {'icon': Icons.info, 'title': 'About', 'route': AppRoutes.about},
  ].toList();

  final AppScreen current;

  ScreenSelector({this.current});

  @override
  Widget build(BuildContext context) {
    
    return new Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Theme.of(context).primaryColor
      ),
      child: BottomNavigationBar(
      currentIndex: AppScreen.values.indexOf(current),
      onTap: (index){Navigator.pushNamed(context, bottomButtons[index]['route']);},
      items: bottomButtons.map((button){
        return BottomNavigationBarItem(
          icon: Icon(button['icon']),
          title: Text(button['title'])
        );
      }).toList(),
    ));
  }
}