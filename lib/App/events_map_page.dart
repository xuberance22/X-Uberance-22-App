import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:xuberance2022_website/pages/events.dart';
// import 'package:xuberance2022_website/pages/home.dart';
import 'package:page_transition/page_transition.dart';
import '../App/location_page.dart';

// import 'location_page.dart';

class Event {
  final String name;
  final String about;
  final String location;
  final String map;
  final String floor;

  Event(
      {required this.name,
      required this.about,
      required this.location,
      required this.map,
      required this.floor});
}

class Event_Location extends StatefulWidget {
  const Event_Location({Key? key}) : super(key: key);

  @override
  State<Event_Location> createState() => _Event_LocationState();
}

class _Event_LocationState extends State<Event_Location> {
  List Events = [
    Event(
      name: "X-GOAL (BOYS)",
      about: "Football",
      location: 'Primary School Field',
      map: 'map_events/Field_Primary_School',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-GOAL (GIRLS)",
      about: "Football",
      location: 'Primary School Field',
      map: 'map_events/Field_Primary_School',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-HOOP (BOYS)",
      about: "Basketball",
      location: 'Basketball Court',
      map: 'map_events/X-HOOP',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-HOOP (GIRLS)",
      about: "Basketball",
      location: 'Basketball Court',
      map: 'map_events/X-HOOP',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-PONG (BOYS)",
      about: "Table Tennis",
      location: 'Games Room',
      map: 'map_events/X-Pong',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-PONG (GIRLS)",
      about: "Table Tennis",
      location: 'Games Room',
      map: 'map_events/X-Pong',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-SPIKE (BOYS)",
      about: "Volleyball",
      location: 'Primary School Field',
      map: 'map_events/Field_Primary_School',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-SPIKE (GIRLS)",
      about: "Volleyball",
      location: 'Primary School Field',
      map: 'map_events/Field_Primary_School',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-PULL (BOYS)",
      about: "Tug Of War",
      location: 'Front Field',
      map: 'map_events/X-PULL',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-PULL (GIRLS)",
      about: "Tug Of War",
      location: 'Front Field',
      map: 'map_events/X-PULL',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-MATE",
      about: "Chess",
      location: 'Big Parlour',
      map: 'map_events/X-MATE',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-WICKET (BOYS)",
      about: "Cricket",
      location: 'Basketball Court',
      map: 'map_events/X-WICKET',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-WICKET (GIRLS)",
      about: "Cricket",
      location: 'Basketball Court',
      map: 'map_events/X-WICKET',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-O☐Δ",
      about: "FIFA",
      location: 'AV Room',
      map: 'map_events/X-O☐Δ',
      floor: 'First Floor',
    ),
    Event(
      name: "X-QUIZITE",
      about: "Quiz",
      location: 'Reading Room',
      map: 'map_events/X-QUIZITE',
      floor: 'Second Floor',
    ),
    Event(
      name: "X-GAANA",
      about: "Antakshari",
      location: 'Xavier Hall',
      map: 'map_events/X-GAANA',
      floor: 'First Floor',
    ),
    Event(
      name: "X-SPLASH",
      about: "Sketches and Spray Painting",
      location: 'Games Room',
      map: 'map_events/X-SPLASH',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-TRIAL",
      about: "Moot Court",
      location: 'AV Room',
      map: 'map_events/X-TRIAL',
      floor: 'First Floor',
    ),
    Event(
      name: "X-30",
      about: "Extempore-Half A Minute",
      location: 'Reading Room',
      map: 'map_events/X-BID',//for reading room
      floor: 'First Floor',
    ),
    Event(
      name: "X-CALIBRE",
      about: "Debate",
      location: 'Xavier Hall',
      map: 'map_events/X-CALIBRE',
      floor: 'First Floor',
    ),
    Event(
      name: "X-BID",
      about: "Auction",
      location: 'Reading Room',
      map: 'map_events/X-BID',
      floor: 'Second Floor',
    ),
    Event(
      name: "X-HUNT",
      about: "Treasure Hunt",
      location: 'School Campus',
      map: 'map_events/X-HUNT',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-CODE",
      about: "Hackathon",
      location: 'Computer Lab',
      map: 'map_events/X-CODE',
      floor: 'Second Floor',
    ),
    Event(
      name: "X-PIXEL",
      about: "Photography",
      location: 'School Campus',
      map: 'map_events/X-MONTAGE',//for school campus
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-MONTAGE",
      about: "Vlogging",
      location: 'School Campus',
      map: 'map_events/X-MONTAGE',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-60",
      about: "One Minute To Fame",
      location: 'Big Parlour',
      map: 'map_events/X-60',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-ABHINOY",
      about: "Bengali Play",
      location: 'Gymnasium (Senior School)',
      map: 'map_events/Gymnasium',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-ACT",
      about: "AD Spoof",
      location: 'AV Room',
      map: 'map_events/X-ACT',
      floor: 'First Floor',
    ),
    Event(
      name: "X-DROP",
      about: "Rap Battle and Beatboxing",
      location: 'Auditorium (Primary School)',
      map: 'map_events/Primary_Auditorium',
      floor: 'Fourth Floor',
    ),
    Event(
      name: "X-RHYME",
      about: "Slam Poetry",
      location: 'Reading Room',
      map: 'map_events/X-RYHME',
      floor: 'Second Floor',
    ),
    Event(
      name: "X-RAGA",
      about: "Eatern Music",
      location: 'Xavier Hall',
      map: 'map_events/X-RAGA',
      floor: 'First Floor',
    ),
    Event(
      name: "X-HOP",
      about: "Dance Face Off",
      location: 'Gymnasium (Primary School)',
      map: 'map_events/Primary_Gymnasium',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-TRAVAGANCE",
      about: "Western Dance",
      location: 'Gymnasium (Senior School)',
      map: 'map_events/Gymnasium',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-ACOUSTIC",
      about: "Western Music",
      location: 'Gymnasium (Senior School)',
      map: 'map_events/Gymnasium',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-PUN",
      about: "Stand Up Comedy",
      location: 'Gymnasium (Senior School)',
      map: 'map_events/Gymnasium',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-VOGUE",
      about: "Fashion Show",
      location: 'Gymnasium (Senior School)',
      map: 'map_events/Gymnasium',
      floor: 'Ground Floor',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.055,
        backgroundColor: const Color.fromARGB(255, 3, 12, 34),
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          'EVENT LOCATIONS',
          style: TextStyle(
            color: Colors.grey[200],
            fontSize: 0.04 * MediaQuery.of(context).size.width,
            // fontWeight: FontWeight.bold,
            fontFamily: 'Xavier1',
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/FinalBG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scrollbar(
          child: ListView(
            children: [
              for (Event e in Events)
                Column(
                  children: [
                    SizedBox(height: 0.02 * MediaQuery.of(context).size.height),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.4),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10.0),
                        title: Text(
                          e.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier1',
                              fontSize:
                                  0.025 * MediaQuery.of(context).size.height),
                        ),
                        subtitle: Text(
                          e.about,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier2',
                              fontSize:
                                  0.015 * MediaQuery.of(context).size.height),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Location(
                                        name: e.name,
                                        des: e.about,
                                        mapLink: e.map,
                                        loc: e.location,
                                        floor: e.floor,
                                      )));
                        },
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
