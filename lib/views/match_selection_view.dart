import 'package:bet_match/app_state.dart';
import 'package:bet_match/models/bet_model.dart';
import 'package:bet_match/views/bet_match.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data.dart';

class MatchSelectionView extends StatelessWidget {
  const MatchSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: appState.selectedTeamsMatches.length,
                itemBuilder: (BuildContext context, int index) {
                  var match = appState.selectedTeamsMatches[index];
                  var teamA =
                      teams.firstWhere((team) => team.id == match.teamOneId);
                  var teamB =
                      teams.firstWhere((team) => team.id == match.teamTwoId);
                  return BetMatch(
                    teamA: teamA,
                    teamB: teamB,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
