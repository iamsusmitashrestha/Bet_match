import 'package:bet_match/app_state.dart';
import 'package:bet_match/views/match_selection_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data.dart';

class TeamSelectionView extends StatelessWidget {
  const TeamSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppState selectionState = Provider.of<AppState>(context);

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Text(
            "Welcome to Team Selection View",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              itemCount: teams.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    selectionState.selected.contains(teams[index])
                        ? selectionState.removeTeam(teams[index])
                        : selectionState.selectTeam(teams[index]);
                  },
                  child: Card(
                    color: selectionState.selected.contains(teams[index])
                        ? Colors.yellow
                        : Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(teams[index].name),
                    ),
                  ),
                );
              }),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/match");
            },
            child: const Text("Select Team"),
          ),
        ]),
      ),
    );
  }
}
