class SchoolLeaderboard{
  final String name;
  final int points;

  SchoolLeaderboard({required this.name, required this.points});

  static SchoolLeaderboard fromJson(Map<String, dynamic> json) =>
      SchoolLeaderboard(name: json['name'], points: json['points']);
}