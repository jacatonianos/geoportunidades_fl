import 'package:geoportunidades/actions/actions.dart';
import 'package:geoportunidades/models/models.dart';
import 'package:redux/redux.dart';

final routeReducer = combineReducers<AppScreen>([
  TypedReducer<AppScreen, UpdateScreenAction>(_activeScreenReducer)
]);

AppScreen _activeScreenReducer(AppScreen activeScreen, UpdateScreenAction action){
  return action.newScreen;
}