import 'package:flutter/material.dart';

class BetModel extends ChangeNotifier {
  final double betAmount;
  final String matchName;

  BetModel({required this.betAmount, required this.matchName});

  @override
  String toString() {
    return "$matchName $betAmount";
  }
}
