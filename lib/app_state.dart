import 'package:bet_match/data.dart';
import 'package:bet_match/models/bet_model.dart';
import 'package:bet_match/models/team_model.dart';
import 'package:flutter/cupertino.dart';

import 'models/match_model.dart';

class AppState extends ChangeNotifier {
  List<TeamModel> selected = [];
  List<MatchModel> selectedTeamsMatches = [];
  List<MatchModel> selectedMatch = [];
  List<BetModel> bets = [];

  selectTeam(TeamModel team) {
    selected = [...selected, team];
    getMatchesForSelectedTeams();
  }

  removeTeam(TeamModel team) {
    selected.remove(team);
    getMatchesForSelectedTeams();
  }

  // selectTeams(MatchModel matches) {
  //   selectedTeamsMatches = [...selectedTeamsMatches, matches];
  //   notifyListeners();
  // }

  getMatchesForSelectedTeams() {
    List<int> selectedTeamids = selected.map((e) => e.id).toList();
    selectedTeamsMatches = matches
        .where((match) =>
            selectedTeamids.contains(match.teamOneId) ||
            selectedTeamids.contains(match.teamTwoId))
        .toList();
    notifyListeners();
  }

  bet(BetModel bet) {
    bets = [...bets, bet];
    print(bets);
    notifyListeners();
  }
}
