import 'package:flutter/cupertino.dart';

class Event {
  final String date;
  final String time;
// Note: Firestore document key is the name of event as well as a field named `name` is present.
  final String name;
  final String rules;
  final String category;

  /// Catchphrase to be displayed in the events page.
  final String phrase;

  /// Short description in a few words for the schedule page.
  final String description;

  Event({
    required this.name, //name of event
    required this.category, //category of event- off, on and field
    required this.description, //event description
    required this.rules, //event rules desciption mein aayega
    required this.phrase,
    required this.date,
    required this.time,
   });
}

enum EventCategory { offstage,onstage,sporting }

extension ToShortString on EventCategory {
  String toShortString() {
    return this.toString().split(".").last;
  }
}