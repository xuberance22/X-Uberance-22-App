import 'package:flutter/material.dart';
import 'event.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'participants_form.dart';

late String? uid;

class RegistrationList extends StatefulWidget {
  RegistrationList(String? u) {
    uid = u;
  }

  @override
  State<RegistrationList> createState() => _RegistrationListState();
}

class _RegistrationListState extends State<RegistrationList> {
  List Events = [
    Event(
        name: "X-GOAL (BOYS)",
        participants: 10,
        about: "Football",
        category: "Sporting"),
    Event(
        name: "X-GOAL (GIRLS)",
        participants: 10,
        about: "Football",
        category: "Sporting"),
    Event(
        name: "X-HOOP (BOYS)",
        participants: 10,
        about: "Basketball",
        category: "Sporting"),
    Event(
        name: "X-HOOP (GIRLS)",
        participants: 10,
        about: "Basketball",
        category: "Sporting"),
    Event(
        name: "X-PONG (BOYS)",
        participants: 4,
        about: "Table Tennis",
        category: "Sporting"),
    Event(
        name: "X-PONG (GIRLS)",
        participants: 4,
        about: "Table Tennis",
        category: "Sporting"),
    Event(
        name: "X-SPIKE (BOYS)",
        participants: 9,
        about: "Volleyball",
        category: "Sporting"),
    Event(
        name: "X-SPIKE (GIRLS)",
        participants: 9,
        about: "Volleyball",
        category: "Sporting"),
    Event(
        name: "X-PULL (BOYS)",
        participants: 12,
        about: "Tug Of War",
        category: "Sporting"),
    Event(
        name: "X-PULL (GIRLS)",
        participants: 12,
        about: "Tug Of War",
        category: "Sporting"),
    Event(
        name: "X-MATE", participants: 2, about: "Chess", category: "Sporting"),
    Event(
        name: "X-WICKET (BOYS)",
        participants: 13,
        about: "Cricket",
        category: "Sporting"),
    Event(
        name: "X-WICKET (GIRLS)",
        participants: 13,
        about: "Cricket",
        category: "Sporting"),
    Event(name: "X-O☐Δ", participants: 2, about: "FIFA", category: "Sporting"),
    Event(
        name: "X-QUIZITE",
        participants: 4,
        about: "Quiz",
        category: "Off-Stage"),
    Event(
        name: "X-GAANA",
        participants: 2,
        about: "Antakshari",
        category: "Off-Stage"),
    Event(
        name: "X-SPLASH",
        participants: 2,
        about: "Sketches and Spray Painting",
        category: "Off-Stage"),
    Event(
        name: "X-TRIAL",
        participants: 2,
        about: "Moot Court",
        category: "Off-Stage"),
    Event(
        name: "X-30",
        participants: 1,
        about: "Extempore-Half A Minute",
        category: "Off-Stage"),
    Event(
        name: "X-CALIBRE",
        participants: 3,
        about: "Debate",
        category: "Off-Stage"),
    Event(
        name: "X-BID",
        participants: 2,
        about: "Auction",
        category: "Off-Stage"),
    Event(
        name: "X-HUNT",
        participants: 2,
        about: "Treasure Hunt",
        category: "Off-Stage"),
    Event(
        name: "X-CODE",
        participants: 2,
        about: "Hackathon",
        category: "Off-Stage"),
    Event(
        name: "X-PIXEL",
        participants: 2,
        about: "Photography",
        category: "Off-Stage"),
    Event(
        name: "X-MONTAGE",
        participants: 2,
        about: "Vlogging",
        category: "Off-Stage"),
    Event(
        name: "X-BET",
        participants: 2,
        about: "Representatives Event",
        category: "Off-Stage"),
    Event(
        name: "X-60",
        participants: 1,
        about: "One Minute To Fame",
        category: "Off-Stage"),
    Event(
        name: "X-ABHINOY",
        participants: 10,
        about: "Bengali Play",
        category: "On-Stage"),
    Event(
        name: "X-ACT",
        participants: 7,
        about: "AD Spoof",
        category: "On-Stage"),
    Event(
        name: "X-DROP",
        participants: 2,
        about: "Rap Battle and Beatboxing",
        category: "On-Stage"),
    Event(
        name: "X-RHYME",
        participants: 1,
        about: "Slam Poetry",
        category: "On-Stage"),
    Event(
        name: "X-RAGA",
        participants: 10,
        about: "Eatern Music",
        category: "On-Stage"),
    Event(
        name: "X-HOP",
        participants: 2,
        about: "Dance Face Off",
        category: "On-Stage"),
    Event(
        name: "X-TRAVAGANCE",
        participants: 10,
        about: "Western Dance",
        category: "On-Stage"),
    Event(
        name: "X-ACOUSTIC",
        participants: 8,
        about: "Western Dance",
        category: "On-Stage"),
    Event(
        name: "X-PUN",
        participants: 1,
        about: "Stand Up Comedy",
        category: "On-Stage"),
    Event(
        name: "X-VOGUE",
        participants: 12,
        about: "Fashion Show",
        category: "On-Stage"),
  ];

  Future<void> navigateToParticipantsForm(context, uid, event) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ParticipantsForm(event, uid)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "REGISTRATION",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Xavier2',
              fontSize: 0.03 * MediaQuery.of(context).size.height),
        ),
        elevation: 0.0,
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      extendBodyBehindAppBar: true,
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
              ListTile(
                title: Text("EVENT",
                    style: TextStyle(
                        fontFamily: "Xavier1",
                        color: Colors.white,
                        fontSize: 0.02 * MediaQuery.of(context).size.height)),
                trailing: Text("PARTICIPANT(S)",
                    style: TextStyle(
                        fontFamily: "Xavier1",
                        color: Colors.white,
                        fontSize: 0.02 * MediaQuery.of(context).size.height)),
                subtitle: Text(
                  "Event Description",
                  style: TextStyle(fontFamily: "Xavier3", color: Colors.white),
                ),
              ),
              for (Event e in Events)
                Column(
                  children: [
                    SizedBox(height: 0.02 * MediaQuery.of(context).size.height),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.4),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        title: Text(
                          e.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier1',
                              fontSize:
                                  0.02 * MediaQuery.of(context).size.height),
                        ),
                        trailing: Text(
                          e.participants.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier1',
                              fontSize:
                                  0.02 * MediaQuery.of(context).size.height),
                        ),
                        subtitle: Text(
                          e.about,
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Xavier3'),
                        ),
                        onTap: () {
                          navigateToParticipantsForm(context, uid, e);
                        },
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 0.05 * MediaQuery.of(context).size.height)
            ],
          ),
        ),
      ),
    );
  }
}
