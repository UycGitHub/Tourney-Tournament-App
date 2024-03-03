import 'package:flutter/material.dart';
import 'package:tourney/product/language/language_items.dart';

class MyHomePage extends StatelessWidget {
  String title = LanguageItems.homePageTitle;

  MyHomePage({@required title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //normally properties must takee from theme but we have not now
        title: Center(
            child: Text(
          LanguageItems.welcomeTitleForAppBar.toUpperCase(),
        )),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.green),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TurnuvaBaslatButton(),
                TurnuvayaDevamEtButton(),
                GecmisTurnuvalarButton(),
                AyarlarButton(),
                HakkindaButton()
              ]),
        ),
      ),
    );
  }
}

//Container widget customized and divided to subclassses
//for standardization
class CustomContainersForOnPressedMethods extends StatelessWidget {
  final String myText;
  final VoidCallback onPressed;

  CustomContainersForOnPressedMethods({
    required this.myText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            fixedSize: const Size(300, 50),
            shape: RoundedRectangleBorder(side: BorderSide.none),
          ),
          onPressed: onPressed,
          child: Text(
            myText,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

//subclasses spesific text variables and onPressed methods
class TurnuvaBaslatButton extends StatelessWidget {
  TurnuvaBaslatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainersForOnPressedMethods(
      myText: LanguageItems.homePageStartTournament.toUpperCase(),
      onPressed: () {},
    );
  }
}

class TurnuvayaDevamEtButton extends StatelessWidget {
  TurnuvayaDevamEtButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainersForOnPressedMethods(
      myText: LanguageItems.homePageContinueTheTournament.toUpperCase(),
      onPressed: () {},
    );
  }
}

class GecmisTurnuvalarButton extends StatelessWidget {
  GecmisTurnuvalarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainersForOnPressedMethods(
      myText: LanguageItems.homePagePastTournaments.toUpperCase(),
      onPressed: () {},
    );
  }
}

class AyarlarButton extends StatelessWidget {
  AyarlarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainersForOnPressedMethods(
      myText: LanguageItems.homePageSettings.toUpperCase(),
      onPressed: () {},
    );
  }
}

class HakkindaButton extends StatelessWidget {
  HakkindaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainersForOnPressedMethods(
      myText: LanguageItems.homePageAbout.toUpperCase(),
      onPressed: () {},
    );
  }
}
