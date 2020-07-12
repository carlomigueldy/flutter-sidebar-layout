import 'package:flutter/material.dart';
import 'package:responsive_app/screens/grid_list_screen.dart';
import 'package:responsive_app/screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Responsive Flutter',
    home: HomeScreen(),
    onGenerateRoute: (settings) {
      // final params = settings.arguments;

      switch (settings.name) {
        case HomeScreen.routeName:
          return MaterialPageRoute(builder: (_) => HomeScreen());
        case GridListScreen.routeName:
          return MaterialPageRoute(builder: (_) => GridListScreen());
        default:
          return MaterialPageRoute(builder: (_) => HomeScreen());
      }
    },
  ));
}
