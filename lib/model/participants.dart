import 'package:json_annotation/json_annotation.dart';

part 'participants.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Participant {
  final String uniqueId;
  int contactNum;
  String name;

  Participant(
      {required this.contactNum, required this.name, required this.uniqueId});

  static bool isValidNumber(int n) {
    return n.toString().length == 10;
  }

  void setName(String n) {
    this.name = n;
  }

  void setNum(int n) {
    this.contactNum = n;
  }

  String toString() {
    return "Participant(" +
        "name:" +
        this.name +
        ", " +
        "contactNum:" +
        this.contactNum.toString() +
        ", " +
        "uniqueId:" +
        this.uniqueId;
  }

  factory Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$ParticipantToJson(this);
}