import 'package:bet_match/app_state.dart';
import 'package:bet_match/models/bet_model.dart';
import 'package:bet_match/models/team_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BetMatch extends StatefulWidget {
  final TeamModel teamA;
  final TeamModel teamB;

  BetMatch({required this.teamA, required this.teamB});

  @override
  _BetMatchState createState() => _BetMatchState();
}

class _BetMatchState extends State<BetMatch> {
  double betAmount = 0;
  bool isBet = false;

  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context);

    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "${widget.teamA.name} vs ${widget.teamB.name}",
            ),
          ),
          isBet
              ? Expanded(child: Text("Bet Amount:$betAmount"))
              : Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (String value) {
                      setState(() {
                        betAmount = double.parse(value);
                      });
                    },
                  ),
                ),
          isBet
              ? const Text("Already bet")
              : Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      appState.bet(
                        BetModel(
                            betAmount: betAmount,
                            matchName:
                                "${widget.teamA.name} vs ${widget.teamB.name}"),
                      );
                      setState(() {
                        isBet = true;
                      });
                    },
                    child: const Text("Bet"),
                  ),
                ),
        ],
      ),
    );
  }
}
