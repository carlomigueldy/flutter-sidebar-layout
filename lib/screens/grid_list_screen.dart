import 'package:flutter/material.dart';

class GridListScreen extends StatelessWidget {
  static const routeName = '/grid-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Text('Grid list screen'),
        ),
      ),
    );
  }
}
