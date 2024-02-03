import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourney',
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(150, 0, 255, 0)),
      home: MyHomePage(title: 'Tourney'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String title = "Tourney";

  MyHomePage({@required title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: ElevatedButton(
                  child: Text(
                    'TURNUVA BAŞLAT',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      shape: LinearBorder(side: BorderSide.none)),
                  onPressed: () {
                    // Handle button 1 press
                  },
                )),
            Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: ElevatedButton(
                  child: Text(
                    'TURNUVAYA DEVAM ET',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      shape: LinearBorder(side: BorderSide.none)),
                  onPressed: () {
                    // Handle button 2 press
                  },
                )),
            Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: ElevatedButton(
                  child: Text(
                    'GEÇMİŞ TURNUVALAR',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      shape: LinearBorder(side: BorderSide.none)),
                  onPressed: () {
                    // Handle button 3 press
                  },
                )),
            Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: ElevatedButton(
                  child: Text(
                    'AYARLAR',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      shape: LinearBorder(side: BorderSide.none)),
                  onPressed: () {
                    // Handle button 4 press
                  },
                )),
            Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: ElevatedButton(
                  child: Text(
                    'HAKKINDA',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      shape: LinearBorder(side: BorderSide.none)),
                  onPressed: () {
                    // Handle button 5 press
                  },
                )),
          ],
        ),
      ),
    ));
  }
}
