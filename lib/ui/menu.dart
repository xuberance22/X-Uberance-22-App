import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xuberance_21/model/event.dart';
import 'package:xuberance_21/model/participants.dart';
import 'package:xuberance_21/model/school.dart';
import 'package:xuberance_21/ui/Events.dart';
import 'package:xuberance_21/ui/participants_form.dart';
import 'package:xuberance_21/ui/schedule.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xuberance_21/ui/sponsor.dart';
import 'package:xuberance_21/ui/teams.dart';

import 'AboutUs.dart';
import 'login.dart';

class MenuPage extends StatefulWidget {
  final FirebaseFirestore firestoreInstance;
  final FirebaseAuth authInstance;

  MenuPage({required this.firestoreInstance, required this.authInstance});
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Duration get transitionDuration => Duration(seconds: 3);

  Widget _TeamsButton() {
    return Row(children: [
      SizedBox(width: 0.112.sw),
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 0.01.sw),
                Image.asset(
                  "images/lines2Menu.png",
                  width: 0.29.sw,
                  height: 0.2.sh,
                ),
              ],
            ),
            Image.asset(
              "images/lines2Revert.png",
              width: 0.4.sw,
              height: 0.16.sh,
            ),
          ],
        ),
      ),
    ]);
  }

  Widget _LoginButton() {
    return Row(children: [
      SizedBox(width: 0.39.sw),
      Flexible(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("images/linesMenu.png",
                    width: 0.75.sw, height: 0.2.sh),
              ],
            ),
            Image.asset("images/linesRevert.png",
                width: 0.4.sw, height: 0.16.sh),
          ],
        ),
      ),
    ]);
  }

  Widget _EventButton(BuildContext ctx) {
    return Stack(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Flexible(child: Image.asset("images/eventLines.png", height: 0.25.sh)),
        Flexible(child: Image.asset("images/eventLines2.png", height: 0.25.sh)),
      ]),
      Column(
        children: [
          SizedBox(height: 0.05.sh),
          Center(
            child: Hero(
              tag: "EVENTS",
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(ctx, "/events");
                  },
                  child: Image.asset("images/EVENTS.png",
                      height: 150, width: 200)),
            ),
          ),
        ],
      ),
    ]);
  }

  Widget _MiddleButtonsRow(BuildContext ctx) {
    return Stack(children: [
      Stack(
        children: [
          _TeamsButton(),
          _LoginButton(),
        ],
      ),
      Center(
          child: Hero(
        tag: "logo",
        child:
            Image.asset("images/card_logo.png", height: 0.28.sh, width: 0.6.sw),
      )),
      Column(
        children: [
          SizedBox(height: 0.1.sh),
          Row(
            children: [
              SizedBox(width: 0.03.sw),
              Container(
                child: Hero(
                  tag: "TEAM",
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(ctx, "/teams");
                      },
                      child: Image.asset("images/TEAM.png",
                          height: 150, width: 120)),
                ),
              ),
            ],
          ),
        ],
      ),
      Column(
        children: [
          SizedBox(height: 0.1.sh),
          Row(
            children: [
              SizedBox(width: 0.62.sw),
              StreamBuilder(
                stream: widget.authInstance.authStateChanges(),
                builder: (ctx, AsyncSnapshot<User?> snapshot) {
                  return Container(
                    child: Hero(
                      tag: "LOGIN",
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              ctx,
                              "/" +
                                  (snapshot.data == null
                                      ? "login"
                                      : "profile/registration"));
                        },
                        child: Column(
                          children: [
                            SizedBox(height: 63),
                            loginOrProfile(snapshot.data == null),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      Column(children: [
        SizedBox(height: 0.34.sh),
        Stack(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset("images/lines.png", width: 0.4.sw, height: 0.2.sh),
            Image.asset("images/lines2.png", width: 0.4.sw, height: 0.2.sh),
          ]),
          Column(
            children: [
              SizedBox(height: 0.07.sh),
              Stack(children: [
                Center(
                    child: Image.asset("images/TriSection_1.png",
                        height: 0.17.sh)),
                Center(
                  child: Image.asset("images/TriSection.png", height: 320.h),
                )
              ])
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SizedBox(height: 0.14.sh),
                  Hero(
                    tag: "SCHEDULE",
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(ctx, "/schedule");
                        },
                        child: Image.asset("images/SCHEDULE.png",
                            height: 50, width: 160)),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 0.14.sh),
                  Hero(
                    tag: "SPONSORS",
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(ctx, "/sponsors");
                        },
                        child: Image.asset("images/SPONSORS.png",
                            height: 50, width: 160)),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 0.3.sh),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(ctx, "/about_us");
                    },
                    child: Image.asset("images/ABOUT US.png",
                        height: 50, width: 200)),
              ),
            ],
          )
        ]),
      ])
    ]);
  }

  Widget loginOrProfile(bool cond) {
    if (cond) {
      return Column(
        children: [
          Image.asset("images/LOGIN.png", height: 29, width: 120),
        ],
      );
    } else {
      return Image.asset(
        "images/PROFILE.png",
        width: mdq(context).width / 3,
      );
    }
  }

  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () => MaterialApp(
              initialRoute: "/",
              routes: {
                "/": (c) => Container(
                      constraints: BoxConstraints.expand(),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("images/sponsors_background.png"),
                        fit: BoxFit.cover,
                      )),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        child: Column(
                          children: [
                            _EventButton(c),
                            _MiddleButtonsRow(c),
                            //_LastButtonsRow()
                          ],
                        ),
                      ),
                    ),
                "/teams": (_) => Teams(),
                "/sponsors": (_) => Sponsors(),
                "/about_us": (_) => AboutUs(),
                "/login": (_) => _multipleProvidersWithChild(LogInPage()),
                "/events": (_) => Events(),
                "/schedule": (_) => Schedule(),
                "/profile/registration": (c) => _registraionWithUser(c),
              },
            ));
  }

  Widget _profileButton(BuildContext ctx) {
//    widget.authInstance.authStateChanges().listen((User? user) {
//      this.isLoggedIn = user != null;
//    });

    return Stack(children: [
      Row(children: [
        SizedBox(width: 0.39.sw),
        Flexible(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("images/linesMenu.png",
                      width: 0.73.sw, height: 0.2.sh),
                ],
              ),
              Image.asset("images/linesRevert.png",
                  width: 0.4.sw, height: 0.16.sh),
            ],
          ),
        ),
      ]),
      Column(
        children: [
          SizedBox(height: 0.16.sh),
          Row(
            children: [
              SizedBox(width: 0.65.sw),
              Container(
                child: TextButton(
                  onPressed: () async {
                    await Navigator.pushNamed(
                      ctx,
                      "/profile/registration",
                    );
                  },
                  child: Text(
                    "PROFILE",
                    style: TextStyle(
                      fontSize: 0.050.sw,
                      color: Colors.white,
                      fontFamily: "tesla",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ]);
  }

  Widget _multipleProvidersWithChild(Widget child) {
    return MultiProvider(
      providers: [
        Provider<FirebaseFirestore>.value(value: widget.firestoreInstance),
        Provider<FirebaseAuth>.value(value: widget.authInstance),
      ],
      child: child,
    );
  }

  Widget _buttonWithAction({required Function() action, required Text text}) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          DEEP_BLUE,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(
              color: DEEP_BLUE,
            ),
          ),
        ),
      ),
      onPressed: action,
      child: text,
    );
  }

  Widget noInternetAlert(BuildContext context, String text) {
    return AlertDialog(
      backgroundColor: LIGHT_BLUE,
      title: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        _buttonWithAction(
          action: () => Navigator.popAndPushNamed(context, "/"),
          text: Text("OK"),
        ),
      ],
    );
  }

  Material errorPopUp(BuildContext ctx, String text) {
    return Material(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/sponsors_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: noInternetAlert(ctx, text),
      ),
    );
  }

  Widget _registraionWithUser(BuildContext ctx) {
    return StreamBuilder(
      stream: widget.firestoreInstance.collection("schools").snapshots(),
      builder: (ctx,
              AsyncSnapshot<QuerySnapshot<Map<String, Object?>>>
                  storeSnapshot) =>
          StreamBuilder(
              stream: widget.authInstance.authStateChanges(),
              builder: (ctx, AsyncSnapshot<User?> authSnapshot) {
                if (storeSnapshot.hasError || authSnapshot.hasError) {
                  print("error --|" +
                      storeSnapshot.error.toString() +
                      " -- " +
                      authSnapshot.error.toString());
                  return errorPopUp(
                      ctx, "Something has gone wrong, please try again later.");
                }

                if (authSnapshot.hasData) {
                  String emailName = authSnapshot.data!.email!.split("@")[0];

                  if (storeSnapshot.hasData) {
                    var docRef = storeSnapshot.data!.docs
                        .where((element) => element.id == emailName);

                    if (docRef.isEmpty) {
                      print("inside");
                      createNewSchoolDoc(widget.authInstance,
                          widget.firestoreInstance, emailName);

                      docRef = storeSnapshot.data!.docs
                          .where((element) => element.id == emailName);
                    }

                    print("docRef --|" + docRef.first.data().toString());

                    School sch = School(
                      name: emailName,
                      eventParticipantsMap: _buildSchoolMap(docRef.first),
                    );

                    return RegistrationPage(
                      school: sch,
                      authInstance: widget.authInstance,
                      storeInstance: widget.firestoreInstance,
                    );
                  } else {
                    print("loading --|" + storeSnapshot.error.toString());
                    return _buildLoading();
                  }
                } else {
                  print("loading --|" + authSnapshot.error.toString());
                  return _buildLoading();
                }
              }),
    );
  }

  Future<void> createNewSchoolDoc(
      FirebaseAuth auth, FirebaseFirestore store, String name) async {
    Map<String, dynamic> map = {
      "user_id": auth.currentUser!.uid,
      "event_participant_map": eventfield
          .map(
            (Event e) => {
              "event_name": e.name.replaceAll("-", "_").toLowerCase(),
              "participants": [],
            },
          )
          .toList(),
    };

    await store.collection("schools").doc(name).set(map);
  }

  Map<Event, List<Participant>> _buildSchoolMap(
      QueryDocumentSnapshot<Map<String, Object?>> docRef) {
    var eventList = (docRef.data()['event_participant_map']) as List;

    Map<Event, List<Participant>> result = {};

    for (Map m in eventList) {
      String eventName = m['event_name']! as String;

      Event event = eventfield.firstWhere(
          (e) => e.name.replaceAll("-", "_").toLowerCase() == eventName);
      List<Participant> list = (m['participants'] as List)
          .map(
            (e) => Participant(
              name: e['name']! as String,
              contactNum: e['contact_num']!,
              uniqueId: e['unique_id']!,
            ),
          )
          .toList();

      result[event] = list;
    }

    return result;
  }

  Widget _buildLoading() {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/sponsors_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
