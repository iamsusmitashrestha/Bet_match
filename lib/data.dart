import 'package:bet_match/models/match_model.dart';
import 'package:bet_match/models/team_model.dart';

List<TeamModel> teams = [
  TeamModel(id: 1, name: "Team A"),
  TeamModel(id: 2, name: "Team B"),
  TeamModel(id: 3, name: "Team C"),
  TeamModel(id: 4, name: "Team D"),
];
List<MatchModel> matches = [
  MatchModel(
      id: 1, teamOneId: 1, teamTwoId: 2, date: DateTime.parse("2021-12-19")),
  MatchModel(
      id: 2, teamOneId: 1, teamTwoId: 3, date: DateTime.parse("2021-12-19")),
  MatchModel(
      id: 2, teamOneId: 2, teamTwoId: 4, date: DateTime.parse("2021-12-19")),
  MatchModel(
      id: 2, teamOneId: 3, teamTwoId: 4, date: DateTime.parse("2021-12-19")),
];
