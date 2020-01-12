
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:geoportunidades/models/models.dart';
import 'package:geoportunidades/routes.dart';
import 'package:geoportunidades/presentation/about.dart';
import 'package:geoportunidades/presentation/addInitiative_screen.dart';
import 'package:geoportunidades/presentation/home_sreen.dart';
import 'package:geoportunidades/presentation/profile_screen.dart';
import 'package:geoportunidades/presentation/search_screen.dart';
import 'package:geoportunidades/themes/main.dart';
import 'package:redux/redux.dart';

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  final Store store;

  MainApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      // Pass the store to the StoreProvider. Any ancestor `StoreConnector`
      // Widgets will find and use this value as the `Store`.
      store: store,
      child: MaterialApp(
        title: 'Geoportunidades',
        theme: GeoportunidadesTheme.theme,
        routes: {
          AppRoutes.home: (context) { return HomeScreen(); },
          AppRoutes.search: (context) { return SearchScreen(); },
          AppRoutes.addInitiative: (context) { return AddInitiativeScreen(); },
          AppRoutes.profile: (context) { return ProfileScreen(); },
          AppRoutes.about: (context) { return AboutScreen(); }
        }, 
      )
    );
  }
}