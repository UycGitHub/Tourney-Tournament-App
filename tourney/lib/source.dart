import 'package:flutter/material.dart';

class Tournament {
  //fields
  String? name;
  bool? isKnockout;
  List<Team> teams = [];
  List<Match>? fixture;
  DateTime? startingDate;
  DateTime? endingDate;
  Team? winner;
  String? trophy;
  String? description;

  //getter setter methods

  String? get getTeamName => name;
  set setTeamName(String? value) => name = value;

  bool? get getIsKnockout => isKnockout;
  set setIsKnockout(bool? value) => isKnockout = value;

  List<Team>? get getTeams => teams;

  List<Match>? get getFixture => fixture;
  set setFixture(List<Match>? value) => fixture = value;

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
    debugPrint("Tournament has been created.");
  }

  //methods
  void addTeam(Team team) {
    teams.add(team);
  }

  void removeTeam(Team team) {
    teams.remove(team);
  }

  Team checkWinner(bool isKnockout) {
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

    return winner;
  }
}

class Team {
  //fields
  String? name;
  int? winCount;
  int? loseCount;
  int? drawCount;
  int? matchCount;
  int? goalsForCount;
  int? goalsAgainstCount;
  int? goalDifferenceCount;
  int points = -1;
  int? stage;
  List<Match>? matches;

  // Getter ve Setter metodu: teamName
  String? get getTeamName => name;
  set setTeamName(String? value) => name = value;

  // Getter ve Setter metodu: winCount
  int? get getWinCount => winCount;
  set setWinCount(int? value) => winCount = value;

  // Getter ve Setter metodu: loseCount
  int? get getLoseCount => loseCount;
  set setLoseCount(int? value) => loseCount = value;

  // Getter ve Setter metodu: drawCount
  int? get getDrawCount => drawCount;
  set setDrawCount(int? value) => drawCount = value;

  // Getter ve Setter metodu: matchCount
  int? get getMatchCount => matchCount;
  set setMatchCount(int? value) => matchCount = value;

  // Getter ve Setter metodu: goalsForCount
  int? get getGoalsForCount => goalsForCount;
  set setGoalsForCount(int? value) => goalsForCount = value;

  // Getter ve Setter metodu: goalsAgainstCount
  int? get getGoalsAgainstCount => goalsAgainstCount;
  set setGoalsAgainstCount(int? value) => goalsAgainstCount = value;

  // Getter ve Setter metodu: goalDifferenceCount
  int? get getGoalDifferenceCount => goalDifferenceCount;
  set setGoalDifferenceCount(int? value) => goalDifferenceCount = value;

  // Getter ve Setter metodu: points
  int get getPoints => points;
  set setPoints(int value) => points = value;

  // Getter ve Setter metodu: stage
  int? get getStage => stage;
  set setStage(int? value) => stage = value;

  // Getter ve Setter metodu: matches
  List<Match>? get getMatches => matches;
  set setMatches(List<Match>? value) => matches = value;
}

class Match {
  // fields
  Team? firstTeam;
  Team? secondTeam;
  Team? winner;
  int? firstTeamScore;
  int? secondTeamScore;
  DateTime? date;

  // Getter ve Setter metodu: firstTeam
  Team? get getFirstTeam => firstTeam;
  set setFirstTeam(Team? value) => firstTeam = value;

  // Getter ve Setter metodu: secondTeam
  Team? get getSecondTeam => secondTeam;
  set setSecondTeam(Team? value) => secondTeam = value;

  // Getter ve Setter metodu: winner
  Team? get getWinner => winner;
  set setWinner(Team? value) => winner = value;

  // Getter ve Setter metodu: firstTeamScore
  int? get getFirstTeamScore => firstTeamScore;
  set setFirstTeamScore(int? value) => firstTeamScore = value;

  // Getter ve Setter metodu: secondTeamScore
  int? get getSecondTeamScore => secondTeamScore;
  set setSecondTeamScore(int? value) => secondTeamScore = value;

  // Getter ve Setter metodu: date
  DateTime? get getDate => date;
  set setDate(DateTime? value) => date = value;
}
