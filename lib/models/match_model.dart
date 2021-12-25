class MatchModel {
  final int id;
  final int teamOneId;
  final int teamTwoId;
  final DateTime date;

  MatchModel(
      {required this.id,
      required this.date,
      required this.teamOneId,
      required this.teamTwoId});
}
