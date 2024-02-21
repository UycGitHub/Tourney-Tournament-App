import 'package:flutter/material.dart';

class Tournament {
  //fields
  String? name;
  bool isKnockout = false;
  List<Team> teams = [];
  List<Match> fixture = [];
  DateTime? startingDate;
  DateTime? endingDate;
  Team? winner;
  String? trophy;
  String? description;

  //getter setter methods

  String? get getTeamName => name;
  set setTeamName(String? value) => name = value;

  bool? get getIsKnockout => isKnockout;

  List<Team>? get getTeams => teams;

  List<Match> get getFixture => fixture;

  DateTime? get getStartingDate => startingDate;
  set setStartingDate(DateTime? value) => startingDate = value;

  DateTime? get getEndingDate => endingDate;
  set setEndingDate(DateTime? value) => endingDate = value;

  Team? get getWinner => winner;
  set setWinner(Team? value) => winner = value;

  String? get getTrophy => trophy;
  set setTrophy(String? value) => trophy = value;

  String? get getDescription => description;
  set setDescription(String? value) => description = value;

  //constructor
  Tournament(this.name, this.isKnockout, this.startingDate, this.endingDate,
      this.trophy, this.description) {
    debugPrint("Tournament has been created named $name.");
  }

  //methods
  void addTeam(Team team) {
    teams.add(team);
    debugPrint("A team has been added named $team.");
  }

  void removeTeam(Team team) {
    teams.remove(team);
    debugPrint("A team has been removed named $team.");
  }

  void checkWinner(bool isKnockout) {
    Team winner = teams[0];

    if (isKnockout) {
      for (Team team in teams) {
        if (team.getStage == 0) {
          winner = team;
        } else {
          continue;
        }
      }
    } else {
      int max = 0;
      for (Team team in teams) {
        if (team.getPoints > max) {
          max = team.getPoints;
          winner = team;
        } else {
          continue;
        }
      }
    }

    setWinner = winner;
    debugPrint("Winner is $winner");
  }

  //todo: fixture should be setable for knockout and point

  void createFixture() {
    if (!isKnockout) {
      for (var i = 0; i < teams.length; i++) {
        for (var j = 0; j < teams.length; j++) {
          if (teams[i] != teams[j]) {
            Match match = Match(teams[i], teams[j]);
            fixture.add(match);
          }
        }
      }
    }
  }
}

class Team {
  //fields
  String name = "";
  int winCount = 0;
  int loseCount = 0;
  int drawCount = 0;
  int matchCount = 0;
  int goalsForCount = 0;
  int goalsAgainstCount = 0;
  int goalDifferenceCount = 0;
  int points = 0;
  int stage = -1;
  List<Match>? matches;

  // gets sets
  String? get getTeamName => name;
  set setTeamName(String value) => name = value;

  int? get getWinCount => winCount;
  set setWinCount(int value) => winCount = value;

  int? get getLoseCount => loseCount;
  set setLoseCount(int value) => loseCount = value;

  int? get getDrawCount => drawCount;
  set setDrawCount(int value) => drawCount = value;

  int? get getMatchCount => matchCount;
  set setMatchCount(int value) => matchCount = value;

  int? get getGoalsForCount => goalsForCount;
  set setGoalsForCount(int value) => goalsForCount = value;

  int? get getGoalsAgainstCount => goalsAgainstCount;
  set setGoalsAgainstCount(int value) => goalsAgainstCount = value;

  int? get getGoalDifferenceCount => goalDifferenceCount;
  set setGoalDifferenceCount(int value) => goalDifferenceCount = value;

  int get getPoints => points;
  set setPoints(int value) => points = value;

  int? get getStage => stage;
  set setStage(int value) => stage = value;

  List<Match>? get getMatches => matches;
  set setMatches(List<Match>? value) => matches = value;

  //constructor
  Team(this.name);
  //methods
}

class Match {
  // fields
  Team firstTeam = Team("");
  Team secondTeam = Team("");
  String name = "";
  Team? winner;
  int? firstTeamScore;
  int? secondTeamScore;
  DateTime? date;

  Team get getFirstTeam => firstTeam;

  Team get getSecondTeam => secondTeam;

  Team? get getWinner => winner;
  set setWinner(Team? value) => winner = value;

  int? get getFirstTeamScore => firstTeamScore;
  set setFirstTeamScore(int? value) => firstTeamScore = value;

  int? get getSecondTeamScore => secondTeamScore;
  set setSecondTeamScore(int? value) => secondTeamScore = value;

  DateTime? get getDate => date;
  set setDate(DateTime? value) => date = value;

  // constructor
  Match(this.firstTeam, this.secondTeam) {
    debugPrint(
        "The match has been created : ${firstTeam.name} and ${secondTeam.name}");
    name = firstTeam.name + " vs " + secondTeam.name;
  }
  // methods
}

void main(List<String> args) {
  Tournament tournament = Tournament("deneme", false, DateTime.now(),
      DateTime.now(), "100₺", "deneme turnuvası");
  Team team1 = Team("takım 1");
  Team team2 = Team("takım 2");
  Team team3 = Team("takım 3");
  Team team4 = Team("takım 4");
  tournament
    ..addTeam(team1)
    ..addTeam(team2)
    ..addTeam(team3)
    ..addTeam(team4);
  tournament.createFixture();
  for (Match match in tournament.getFixture) {
    print(match.name);
  }
}
