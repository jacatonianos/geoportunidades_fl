// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/material.dart';

class GeoportunidadesTheme {
  static ThemeData get theme {
    final themeData = ThemeData.light();
    final textTheme = themeData.textTheme;
    final body1 = textTheme.body1.copyWith(decorationColor: Colors.transparent);

    return ThemeData.light().copyWith(
      primaryColor: Colors.orange[300],
      accentColor: Colors.blueGrey[200],
      buttonColor: Colors.grey[800],
      textSelectionColor: Colors.cyan[100],
      toggleableActiveColor: Colors.cyan[300],
    );
  }
}
