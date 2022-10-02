class Participant {
  final String name;
  final String phone;

  Participant({required this.name, required this.phone});

  static Participant fromJson(Map<String, dynamic> json) =>
      Participant(name: json['name'], phone: json['phone']);
}
