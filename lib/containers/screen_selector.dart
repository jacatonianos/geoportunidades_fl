import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:geoportunidades/actions/actions.dart';
import 'package:geoportunidades/models/models.dart';
import 'package:redux/redux.dart';

class ScreenSelector extends StatelessWidget{
  static final bottomButtons = {
    AppScreen.home: {'icon': Icons.home, 'title': 'Home'},
    AppScreen.search: {'icon': Icons.search, 'title': 'Search'},
    AppScreen.addInitiative: {'icon': Icons.add, 'title': 'Add'},
    AppScreen.profile: {'icon': Icons.person, 'title': 'Profile'},
    AppScreen.about: {'icon': Icons.info, 'title': 'About'},
  };

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        return new Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
          ),
          child: BottomNavigationBar(
          currentIndex: AppScreen.values.indexOf(vm.activeScreen),
          onTap: vm.onScreenSelected,
          items: AppScreen.values.map((screen){
            return BottomNavigationBarItem(
              icon: Icon(bottomButtons[screen]['icon']),
              title: Text(bottomButtons[screen]['title'])
            );
          }).toList(),
          
        ));
      }
    );
  }
}

class _ViewModel {
  final AppScreen activeScreen;
  final Function(int) onScreenSelected;

  _ViewModel({this.activeScreen, this.onScreenSelected});  

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      activeScreen: store.state.activeScreen,
      onScreenSelected: (index) {
        store.dispatch(UpdateScreenAction((AppScreen.values[index])));
      },
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          activeScreen == other.activeScreen;

  @override
  int get hashCode => activeScreen.hashCode;
}