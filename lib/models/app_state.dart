import 'package:geoportunidades/models/models.dart';

class AppState {
  final AppScreen activeScreen;

  AppState({this.activeScreen});

  @override
  int get hashCode =>
      activeScreen.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          activeScreen == other.activeScreen;

  @override
  String toString() {
    return 'AppState{active screen: $activeScreen}';
  }
}