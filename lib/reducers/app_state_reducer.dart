import 'package:geoportunidades/models/models.dart';
import 'package:geoportunidades/reducers/route_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
      activeScreen: routeReducer(state.activeScreen, action)
    );
}