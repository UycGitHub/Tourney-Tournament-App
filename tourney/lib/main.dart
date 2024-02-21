import 'package:flutter/material.dart';
import 'package:tourney/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourney',
      theme: ThemeData.light(),
      // I want make a spesific theme in the future, so I changed to most nsaic version
      home: MyHomePage(title: 'Tourney'),
    );
  }
}
