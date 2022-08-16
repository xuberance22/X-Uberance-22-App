import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' as fpdart;
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:xuberance_21/model/event.dart';
import 'package:xuberance_21/model/participants.dart';
import 'package:xuberance_21/model/school.dart';
import 'package:xuberance_21/ui/Events.dart';
import 'package:xuberance_21/ui/login.dart';

const Color DEEP_BLUE = Color(0xff0a3b70);

const Color LIGHT_BLUE = Color(0xff3e6896);

class RegistrationPage extends StatefulWidget {
  final School school;

  final FirebaseAuth authInstance;
  final FirebaseFirestore storeInstance;

  const RegistrationPage(
      {required this.school,
      required this.authInstance,
      required this.storeInstance});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

Size mdq(BuildContext c) => MediaQuery.of(c).size;

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/sponsors_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(flex: 2, child: _buildHeading(context)),
            Expanded(
              flex: 10,
              child: _buildListOfEvents(context),
            ),
            Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        widget.authInstance.signOut();
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          DEEP_BLUE,
                        ),
                      ),
                      child: Text("Log out"),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildHeading(BuildContext ctx) {
    return Padding(
      padding: EdgeInsets.only(top: mdq(ctx).height / 26),
      child: Text(
        "REGISTRATION",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "heading",
          fontSize: mdq(ctx).width / 10,
        ),
      ),
    );
  }

  Widget _buildListOfEvents(BuildContext ctx) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withOpacity(0.2),
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
          child: Column(
            children: <Widget>[
              // SizedBox to make sure the wdith of the blue region is same as the screen.
              SizedBox(width: mdq(ctx).width),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "EVENTS",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "texts",
                    fontSize: mdq(ctx).width / 20,
                  ),
                ),
              ),
              Container(
                height: mdq(ctx).height * 9 / 13,
                child: ListView(
                  shrinkWrap: true,
                  children: widget.school.eventParticipantsMap.entries
                      .map(
                        (MapEntry<Event, List<Participant>> entry) => EventTile(
                          event: entry.key,
                          listOfParticipants: entry.value,
                          authInstance: widget.authInstance,
                          storeInstance: widget.storeInstance,
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EventTile extends StatefulWidget {
  final Event event;
  final List<Participant> listOfParticipants;
  final FirebaseAuth authInstance;
  final FirebaseFirestore storeInstance;

  const EventTile(
      {Key? key,
      required this.event,
      required this.listOfParticipants,
      required this.authInstance,
      required this.storeInstance})
      : super(key: key);

  @override
  _EventTileState createState() => _EventTileState();
}

class _EventTileState extends State<EventTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent.withOpacity(0.1),
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(13),
            ),
          ),
          child: ListTile(
            title: Text(
              widget.event.name.toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontSize: mdq(context).width / 16,
                fontFamily: "heading",
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MultiProvider(
                  providers: [
                    Provider<fpdart.Tuple2<Event, List<Participant>>>(
                      create: (_) {
                        return fpdart.Tuple2(
                            widget.event, widget.listOfParticipants);
                      },
                    ),
                  ],
                  child: ParticipantForm(
                    auth: widget.authInstance,
                    store: widget.storeInstance,
                    event: widget.event,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension HandleParticipants on List<Participant> {
  void addParticipant(Participant p) {
    this.add(p);
  }

  void removeParticipantWithId(String id) {
    this.removeWhere((element) => element.uniqueId == id);
  }
}

class ParticipantForm extends StatefulWidget {
  final FirebaseAuth auth;
  final FirebaseFirestore store;
  final Event event;

  final Uuid uuid = Uuid();
  ParticipantForm(
      {Key? key, required this.auth, required this.store, required this.event})
      : super(key: key);

  @override
  _ParticipantFormState createState() => _ParticipantFormState();
}

class _ParticipantFormState extends State<ParticipantForm> {
  int participantCount = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/sponsors_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Consumer<fpdart.Tuple2<Event, List<Participant>>>(
          builder: (_, tpl, __) {
            this.participantCount = tpl.second.length;
            return Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: _buildHeading(context),
                ),
                Expanded(
                  flex: 1,
                  child: _buildParticipantStats(context),
                ),
                Flexible(
                  flex: 9,
                  child: _buildListOfForms(context),
                ),
                if (isCountValid())
                  Flexible(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {
                          final String newUniqueId = widget.uuid.v1();
                          var participant = Participant(
                            uniqueId: newUniqueId,
                            name: "Participant Name",
                            contactNum: 0,
                          );

                          addTemporary(participant, context);

                          setState(() {
                            tpl.second.addParticipant(
                              participant,
                            );
                          });
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: mdq(context).width / 10,
                        ),
                      )),
              ],
            );
          },
        ),
      ),
    );
  }

  Padding _buildParticipantStats(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Consumer<fpdart.Tuple2<Event, List<Participant>>>(
        builder: (context, tpl, __) {
          print("tpl --|" +
              tpl.first.numberOfParticipants.toString().split(" ").toString());
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Required \nParticipants- " +
                        tpl.first.numberOfParticipants.toString().split(" ")[0],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: mdq(context).width / 30,
                      fontFamily: "texts",
                    ),
                  ),
                  Text(
                    tpl.first.grade.toShortString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: mdq(context).width / 30,
                      fontFamily: "texts",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                "Current- " + this.participantCount.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: mdq(context).width / 30,
                  fontFamily: "texts",
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildHeading(BuildContext context) {
    return Consumer<fpdart.Tuple2<Event, List<Participant>>>(
      builder: (_, tpl, __) => Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Text(
          tpl.first.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: mdq(context).width / 10,
            fontFamily: "heading",
          ),
        ),
      ),
    );
  }

  Widget _buildListOfForms(BuildContext ctx) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withOpacity(0.2),
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
          child: Column(
            children: <Widget>[
              // SizedBox to make sure the wdith of the blue region is same as the screen.
              SizedBox(width: mdq(ctx).width),
              Container(
                height: mdq(ctx).height * 9 / 13,
                child: Consumer<fpdart.Tuple2<Event, List<Participant>>>(
                  builder: (_, tpl, __) {
                    return ListView(
                      shrinkWrap: true,
                      children: tpl.second
                          .map(
                            (Participant p) => ParticipantCard(
                                participant: p,
                                auth: widget.auth,
                                store: widget.store,
                                event: widget.event),
                          )
                          .toList(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isCountValid() {
    Range range = widget.event.numberOfParticipants;
    return (this.participantCount <
        (range.end == null ? range.start : range.end!));
  }

  void addButtonOnPressed(BuildContext context) {}

  void addTemporary(Participant participant, BuildContext ctx) {
    String schoolName = widget.auth.currentUser!.email!.split("@")[0];

    String eventName = widget.event.name.replaceAll("-", "_").toLowerCase();

    var schoolRef = widget.store.collection("schools").doc(schoolName);

    schoolRef.get().then((DocumentSnapshot doc) async {
      if (doc.exists) {
        List eventPartArr =
            (doc.data()! as Map)['event_participant_map'] as List;

        List participantsArrJson = eventPartArr.firstWhere(
            (m) => m['event_name'] == eventName)['participants'] as List;

        List<Participant> lst =
            participantsArrJson.map((p) => Participant.fromJson(p)).toList();

        lst.add(participant);

        int eventPartArrIdx =
            eventPartArr.indexWhere((m) => m['event_name'] == eventName);

        eventPartArr[eventPartArrIdx]['participants'] =
            lst.map((e) => e.toJson()).toList();

        await doc.reference.set(<String, dynamic>{
          'event_participant_map': eventPartArr,
        }, SetOptions(merge: true));

        setState(() {});
      } else {
        print("Does not exist.");
      }
    });
  }
}

class ParticipantCard extends StatefulWidget {
  final Participant participant;
  final FirebaseAuth auth;
  final FirebaseFirestore store;
  final Event event;
  ParticipantCard({
    Key? key,
    required this.participant,
    required this.auth,
    required this.store,
    required this.event,
  }) : super(key: key);

  @override
  _ParticipantCardState createState() => _ParticipantCardState();
}

class _ParticipantCardState extends State<ParticipantCard> {
  final _key = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _contactNumController = TextEditingController();

  bool firstEdit = true;
  bool isDeleted = false;

  String name = "";
  String contactNum = "";

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (firstEdit) {
        _nameController.text = widget.participant.name;
        _contactNumController.text = widget.participant.contactNum.toString();
        firstEdit = false;
      }
    });

    if (this.isDeleted) {
      return Container();
    } else {
      return Padding(
        padding: const EdgeInsets.all(14),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.1),
              border: Border.all(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(13),
              ),
            ),
            child: ListTile(
              title: Text(
                widget.participant.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: mdq(context).width / 25,
                  fontFamily: "heading",
                ),
              ),
              subtitle: Text(
                widget.participant.contactNum.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: mdq(context).width / 30,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (c) => _formPopUp(c),
                  );
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      );
    }
  }

  Widget _formPopUp(BuildContext ctx) {
    return Container(
      color: DEEP_BLUE.withOpacity(0.95),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Form(
            key: _key,
            // SingleChildScrollView required to prevent overflow by keyboard.
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    width: mdq(ctx).width * 2 / 3,
                    child: _buildNameField(),
                  ),
                  SizedBox(
                    height: mdq(ctx).height / 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    width: mdq(ctx).width * 2 / 3,
                    child: _buildContactField(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => doneButtonOnPressed(ctx),
                        child: Text("Done"),
                      ),
                      SizedBox(width: 80),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        onPressed: () => deleteButtonOnPressed(ctx),
                        child: Text("Delete"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void doneButtonOnPressed(BuildContext ctx) {
    if (_key.currentState!.validate()) {
      String schoolName = widget.auth.currentUser!.email!.split("@")[0];

      String eventName = widget.event.name.replaceAll("-", "_").toLowerCase();

      var schoolRef = widget.store.collection("schools").doc(schoolName);

      schoolRef.get().then((DocumentSnapshot doc) async {
        if (doc.exists) {
          List eventPartArr =
              (doc.data()! as Map)['event_participant_map'] as List;

          List participantsArrJson = eventPartArr.firstWhere(
              (m) => m['event_name'] == eventName)['participants'] as List;

          List<Participant> lst =
              participantsArrJson.map((p) => Participant.fromJson(p)).toList();

          var participantIdx = lst.indexWhere((element) {
            return element.uniqueId == widget.participant.uniqueId;
          });

          var editedParticipant = Participant(
            uniqueId: widget.participant.uniqueId,
            name: this._nameController.text,
            contactNum: int.parse(this._contactNumController.text),
          );
          lst[participantIdx] = editedParticipant;

          int eventPartArrIdx =
              eventPartArr.indexWhere((m) => m['event_name'] == eventName);

          eventPartArr[eventPartArrIdx]['participants'] =
              lst.map((e) => e.toJson()).toList();

          await doc.reference.set(<String, dynamic>{
            'event_participant_map': eventPartArr,
          }, SetOptions(merge: true));

          setState(() {
            widget.participant.setName(editedParticipant.name);
            widget.participant.setNum(editedParticipant.contactNum);
          });
        } else {
          print("Does not exist.");
          createNewSchoolDoc(widget.auth, widget.store, schoolName);
        }

        Navigator.pop(ctx);
      });
    }
  }

  void createNewSchoolDoc(
      FirebaseAuth auth, FirebaseFirestore store, String name) {
    var map = {
      "event_participant_map": eventfield.map(
        (Event e) => {
          "event_name": e.name.replaceAll("-", "_").toLowerCase(),
          "participants": [],
        },
      )
    };

    store.collection("schools").doc(name).set(map);
  }

  TextFormField _buildContactField() {
    return TextFormField(
      onChanged: (s) {
        setState(() {
          this.contactNum = s;
        });
      },
      controller: _contactNumController,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
      decoration: InputDecoration(
        labelText: "Phone Number",
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: DEEP_BLUE,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: DEEP_BLUE,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
      validator: (String? s) {
        if (s == null || s.isEmpty) {
          return "Please enter the phone number.";
        } else if (s.length != 10 || !isNumeric(s)) {
          return "Please enter a valid phone number";
        }
      },
    );
  }

  TextFormField _buildNameField() {
    return TextFormField(
      onChanged: (s) {
        setState(() {
          this.name = s;
        });
      },
      autofocus: true,
      controller: _nameController,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
      decoration: InputDecoration(
        labelText: "Name",
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: DEEP_BLUE,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: DEEP_BLUE,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
      validator: (String? s) {
        if (s == null || s.isEmpty || s == "Participant Name") {
          return "Please enter the name.";
        }
      },
    );
  }

  deleteButtonOnPressed(BuildContext ctx) {
    String schoolName = widget.auth.currentUser!.email!.split("@")[0];

    String eventName = widget.event.name.replaceAll("-", "_").toLowerCase();

    var schoolRef = widget.store.collection("schools").doc(schoolName);

    schoolRef.get().then((DocumentSnapshot doc) async {
      if (doc.exists) {
        List eventPartArr =
            (doc.data()! as Map)['event_participant_map'] as List;

        List participantsArrJson = eventPartArr.firstWhere(
            (m) => m['event_name'] == eventName)['participants'] as List;

        List<Participant> lst =
            participantsArrJson.map((p) => Participant.fromJson(p)).toList();

        var participantIdx = lst.indexWhere((element) {
          return element.uniqueId == widget.participant.uniqueId;
        });

        lst.removeAt(participantIdx);

        int eventPartArrIdx =
            eventPartArr.indexWhere((m) => m['event_name'] == eventName);

        eventPartArr[eventPartArrIdx]['participants'] =
            lst.map((e) => e.toJson()).toList();

        await doc.reference.set(<String, dynamic>{
          'event_participant_map': eventPartArr,
        }, SetOptions(merge: true));

        sleep(Duration(seconds: 1));
        setState(() {
          this.isDeleted = true;
        });
      }
      Navigator.pop(ctx);
    });
  }
}

bool isNumeric(String s) {
  return int.tryParse(s) != null;
}
