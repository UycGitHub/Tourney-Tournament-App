import 'package:flutter/material.dart';
import 'package:tourney/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tourney',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
            color: Colors.white,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            )),
      ),
      home: MyHomePage(title: 'Tourney'),
    );
  }
}
