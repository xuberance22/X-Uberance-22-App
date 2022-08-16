import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:json_annotation/json_annotation.dart';

class Event {
  final String date;
  final String time;
// Note: Firestore document key is the name of event as well as a field named `name` is present.
  final String name;
  final String rules;
  final String category;
  final Grade grade;
  final Range numberOfParticipants;

  /// Catchphrase to be displayed in the events page.
  final String phrase;

  /// Short description in a few words for the schedule page.
  final String description;

  Event({
    required this.name,
    required this.category,
    required this.description,
    required this.rules,
    required this.phrase,
    required this.date,
    required this.time,
    required this.grade,
    required this.numberOfParticipants,
  });
}

enum EventCategory { recorded, streaming, live, gaming }

extension ToShortString on EventCategory {
  String toShortString() {
    return this.toString().split(".").last;
  }
}

enum Grade { fourToFive, sixToEight, nineToTwelve }

extension ToShortStringGrade on Grade {
  String toShortString() {
    switch (this) {
      case Grade.fourToFive:
        return "Grade- 4 to 5";
      case Grade.sixToEight:
        return "Grade- 6 to 8";
      case Grade.nineToTwelve:
        return "Grade- 9 to 12";
      default:
        return "Grade- 9 to 12";
    }
  }
}

class Range {
  final int start;
  final int? end;
  bool includingEditor;

  Range({required this.start, this.end, required this.includingEditor});

  String toString() {
    return start.toString() +
        (end == null ? "" : "-" + end.toString()) +
        " " +
        "Participant(s)" +
        (includingEditor ? "\n(including editor)" : "");
  }
}
