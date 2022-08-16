import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(home: registrationEvents()));
}

class registrationEvents extends StatefulWidget {
  const registrationEvents({Key? key}) : super(key: key);

  @override
  _registrationEventsState createState() => _registrationEventsState();
}

class _registrationEventsState extends State<registrationEvents> {
  int _numberOfParticipants = 7;

  List _name = [];
  List _number = [];

  final _tc1 = TextEditingController();
  final _tc2 = TextEditingController();

  Widget _participantsList(name, number) {
    return ListTile(
        title: Text(
          "Hitansh",
          style: TextStyle(
              fontFamily: "Futura",
              fontSize: 0.04 * MediaQuery.of(context).size.height,
              color: Colors.white),
        ),
        subtitle: Text(
          "9007452777",
          style: TextStyle(
              fontFamily: "Futura",
              fontSize: 0.02 * MediaQuery.of(context).size.height,
              color: Colors.white),
        ),
        trailing: IconButton(
            onPressed: () {
              _participants(context, 1);
            },
            icon: Icon(
              Icons.edit,
              color: Colors.white,
            )));
  }

  Widget _page2() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/background.png"),
        fit: BoxFit.cover,
      )),
      child: Container(
        color: Colors.black.withOpacity(0.3),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 0.1 * MediaQuery.of(context).size.height,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Card(
                    color: Colors.lightBlueAccent.withOpacity(0.2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                            topRight: Radius.circular(70))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30, width: 1000),
                        Text(
                          "X-Travangance",
                          style: TextStyle(
                            fontFamily: "Batman Forever",
                            fontSize: 0.04 * MediaQuery.of(context).size.height,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 0.75 * MediaQuery.of(context).size.height,
                          child: ListView(
                            children: [
                              for (int i = 0; i < 1; i++)
                                Flexible(
                                    child: _participantsList(
                                        "Hitansh", "1000000000"))
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            _participants(context, 7);
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 0.0609 * MediaQuery.of(context).size.height,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _info(int i) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text(
          "Participant $i",
          style: TextStyle(
            fontFamily: "Futura",
            fontSize: 0.025 * MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SizedBox(
            height: 25,
            width: 220,
            child: TextField(
              controller: _tc1,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hoverColor: Colors.blueAccent,
                fillColor: Colors.blueAccent,
                labelText: "Enter name",
                border: OutlineInputBorder(),
              ),
              onSubmitted: (String value) {
                _name[i - 1] = _tc1.text;
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SizedBox(
            height: 25,
            width: 220,
            child: TextField(
              controller: _tc2,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                fillColor: Colors.blueAccent,
                labelText: "Enter number",
                border: OutlineInputBorder(),
              ),
              onSubmitted: (String value) {
                _number[i - 1] = _tc2.text;
              },
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  void _participants(context, int count) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            color: Colors.blueGrey,
            height: 0.6 * MediaQuery.of(context).size.height,
            child: Stack(children: [
              Column(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 0.35 * MediaQuery.of(context).size.height,
                          width: 0.6 * MediaQuery.of(context).size.width,
                          child: ListView(children: [
                            for (int i = 1; i <= count; i++) _info(i),
                            SizedBox(height: 10),
                          ]),
                        ),
                        SizedBox(
                            height: 0.05 * MediaQuery.of(context).size.height),
                        SizedBox(
                          height: 0.05 * MediaQuery.of(context).size.height,
                          width: 0.6 * MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Submit",
                                style: TextStyle(fontFamily: "Futura"),
                              )),
                        ),
                        SizedBox(width: 1000, height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          _page2(),
        ],
      ),
    );
  }
}
