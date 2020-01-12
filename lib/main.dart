import 'package:flutter/material.dart';
import 'package:geoportunidades/app.dart';
import 'package:geoportunidades/reducers/app_state_reducer.dart';
import 'package:redux/redux.dart';

import 'models/models.dart';

void main(){
  final store = Store(appReducer, initialState: new AppState(activeScreen: AppScreen.home));
  runApp(MainApp(
    store: store
  ));
} 