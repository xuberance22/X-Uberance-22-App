import 'dart:collection';
import 'package:xuberance_21/model/participants.dart';

import 'event.dart';

// TODO(xuberance-gh): Get all event details and complete the entire `Map<String,Event>`.
// Map of identifier name to `Event` instance.
final Map<String, Event> NAME_TO_EVENT_MAP = {
  'x_meme': Event(
    name: "X-Meme",
    rules: "TBD",
    category: "recorded",
    grade: Grade.nineToTwelve,
    phrase: "TBD",
    description: "TBD",
    date: "",
    time: "",
    numberOfParticipants: Range(start: 1, includingEditor: false),
  ),
};
// Map of identifier name to display name.
const Map<String, String> EVENT_NAMES = {
  'x_meme': 'X-Meme',
};

class School {
  late final String name;
  late final Map<Event, List<Participant>> eventParticipantsMap;

  School({
    required this.name,
    required this.eventParticipantsMap,
  });
}
