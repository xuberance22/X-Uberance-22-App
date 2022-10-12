import 'package:flutter/material.dart';
import 'event.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'participant.dart';

late Event event;
late String uid;

class ParticipantsForm extends StatefulWidget {
  ParticipantsForm(Event e, String u) {
    event = e;
    uid = u;
  }

  @override
  State<ParticipantsForm> createState() => _ParticipantsFormState();
}

class _ParticipantsFormState extends State<ParticipantsForm> {
  Future<void> navigateToRegisteredParticipants(context) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => RegisteredParticipants()));
  }

  String name = '';
  String phone = '';
  final CollectionReference schools =
      FirebaseFirestore.instance.collection('schools');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.name.toUpperCase(),
            style: TextStyle(fontFamily: "Xavier1")),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        elevation: 0.0,
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/FinalBG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 0.1 * MediaQuery.of(context).size.height,
            ),
            Text(
              "Required Participants: " + event.participants.toString(),
              style: TextStyle(color: Colors.white, fontFamily: 'Xavier1'),
            ),
            SizedBox(
              height: 0.05 * MediaQuery.of(context).size.height,
            ),
            Text(
              "Category: " + event.category,
              style: TextStyle(color: Colors.white, fontFamily: 'Xavier1'),
            ),
            SizedBox(
              height: 0.05 * MediaQuery.of(context).size.height,
            ),
            ElevatedButton(
                onPressed: () {
                  navigateToRegisteredParticipants(context);
                },
                child: Text(
                  'Registered Participants',
                  style: TextStyle(color: Colors.white, fontFamily: 'Xavier1'),
                )),
            SizedBox(
              height: 0.05 * MediaQuery.of(context).size.height,
            ),
            Container(
              height: 0.6 * MediaQuery.of(context).size.height,
              child: Scrollbar(
                interactive: true,
                thickness: 5,
                trackVisibility: true,
                child: ListView(
                  children: [
                    for (int i = 1; i <= event.participants; i++) _form(i),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  createParticipant(int i) async {
    final participant = FirebaseFirestore.instance
        .collection('schools')
        .doc(uid)
        .collection(event.name)
        .doc('participant $i');

    final json = {'name': name, 'phone': phone};

    await participant.set(json);
  }

  Widget _form(int i) {
    return Column(
      children: [
        Text(
          "Participant " + i.toString(),
          style: TextStyle(color: Colors.white, fontFamily: 'Xavier1'),
        ),
        SizedBox(
          height: 0.05 * MediaQuery.of(context).size.height,
        ),
        SizedBox(
          width: 0.6 * MediaQuery.of(context).size.width,
          child: TextFormField(
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
            style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),
            decoration: const InputDecoration(
              hintText: "Name",
              hintStyle: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2.0),
              ),
              fillColor: Color.fromARGB(255, 3, 12, 34),
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 3, 12, 34), width: 2.0),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 0.05 * MediaQuery.of(context).size.height,
        ),
        SizedBox(
          width: 0.6 * MediaQuery.of(context).size.width,
          child: TextFormField(
            onChanged: (value) {
              setState(() {
                phone = value;
              });
            },
            style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),
            decoration: const InputDecoration(
              hintText: "Phone Number",
              hintStyle: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2.0),
              ),
              fillColor: Color.fromARGB(255, 3, 12, 34),
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 3, 12, 34), width: 2.0),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 0.05 * MediaQuery.of(context).size.height,
        ),
        SizedBox(
          width: 0.3 * MediaQuery.of(context).size.width,
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  createParticipant(i);
                });
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => this.widget),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(3, 12, 34, 0.8),
              ),
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontFamily: 'Xavier1'),
              )),
        ),
        SizedBox(
          height: 0.1 * MediaQuery.of(context).size.height,
        ),
      ],
    );
  }
}

class RegisteredParticipants extends StatefulWidget {
  const RegisteredParticipants({super.key});

  @override
  State<RegisteredParticipants> createState() => _RegisteredParticipantsState();
}

class _RegisteredParticipantsState extends State<RegisteredParticipants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        title: Text(
          'REGISTERED',
          style: TextStyle(color: Colors.white, fontFamily: 'Xavier1'),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: StreamBuilder<List<Participant>>(
          stream: readParticipants(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/FinalBG.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    "Something went wrong! Try Again",
                    style: TextStyle(color: Colors.white, fontFamily: 'Xavier1'),
                  ),
                ),
              );
            } else if (snapshot.hasData) {
              final participants = snapshot.data!;

              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/FinalBG.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ListView(
                  children: participants.map(buildParticipant).toList(),
                ),
              );
            } else if (snapshot.data == null) {
              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                      "No Participants have been registered for this event yet!", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1'),),
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Stream<List<Participant>> readParticipants() => FirebaseFirestore.instance
      .collection('schools')
      .doc(uid)
      .collection(event.name)
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => Participant.fromJson(doc.data()))
          .toList());

  Widget buildParticipant(Participant participant) => SizedBox(
        height: 0.1 * MediaQuery.of(context).size.height,
        child: ListTile(
          title: Text(
            participant.name.toUpperCase(),
            style: TextStyle(color: Colors.white, fontFamily: 'Xavier1'),
          ),
          subtitle: Text(
            participant.phone,
            style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),
          ),
        ),
      );
}
