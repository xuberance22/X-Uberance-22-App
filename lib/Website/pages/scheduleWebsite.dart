import 'package:flutter/material.dart';
import 'constants.dart' as c;
import 'package:page_transition/page_transition.dart';
import '../pages/team2.dart';
import 'eventsWebsite.dart';
import '../../App/home.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Schedule extends StatefulWidget {
  int day = 0;

  Schedule({
    Key? key,
    required this.day,
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<Schedule> createState() => _ScheduleState(day: day);
}

class _ScheduleState extends State<Schedule> {
  int day = 0;

  _ScheduleState({
    required this.day,
  });

  Future<void> navigateToTeams(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: const Team(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToEvents(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: Events(
            events_type: 1,
          ),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToHome(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: const Home(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToDay(context, int a) async {
    Navigator.push(
        context,
        PageTransition(
          child: Schedule(day: a),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<Widget> Events = [
      Text(
        'EVENTS',
        style: TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontFamily: 'Xavier2',
        ),
      ),
      SizedBox(height: 20)
    ];
    List<Widget> Timing = [
      Text(
        'TIMINGS',
        style: TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontFamily: 'Xavier2',
        ),
      ),
      SizedBox(height: 20)
    ];
    List<Widget> Venue = [
      Text(
        'VENUE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontFamily: 'Xavier2',
        ),
      ),
      SizedBox(height: 20)
    ];
    if (day == 1) {
      Events.insertAll(
          2,
          c.Day1Event.map((Event) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  Event,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Xavier2',
                  ),
                ),
              ),
            );
          }).toList());
      Timing.insertAll(
          2,
          c.Day1Timing.map((Event) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  Event,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Xavier2',
                  ),
                ),
              ),
            );
          }).toList());
      Venue.insertAll(
          2,
          c.Day1Venue.map((Event) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  Event,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Xavier2',
                  ),
                ),
              ),
            );
          }).toList());
    }
    if (day == 2) {
      Events.insertAll(
          2,
          c.Day2Event.map((Event) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  Event,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Xavier2',
                  ),
                ),
              ),
            );
          }).toList());
      Timing.insertAll(
          2,
          c.Day2Timing.map((Event) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  Event,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Xavier2',
                  ),
                ),
              ),
            );
          }).toList());
      Venue.insertAll(
          2,
          c.Day2Venue.map((Event) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  Event,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Xavier2',
                  ),
                ),
              ),
            );
          }).toList());
    }
    if (day == 3) {
      Events.insertAll(
          2,
          c.Day3Event.map((Event) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  Event,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Xavier2',
                  ),
                ),
              ),
            );
          }).toList());
      Timing.insertAll(
          2,
          c.Day3Timing.map((Event) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  Event,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Xavier2',
                  ),
                ),
              ),
            );
          }).toList());
      Venue.insertAll(
          2,
          c.Day3Venue.map((Event) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  Event,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Xavier2',
                  ),
                ),
              ),
            );
          }).toList());
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 0.05 * width, height: 0.1),
            TextButton(
              onPressed: () {
                navigateToHome(context);
              },
              child: const Text("Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Schedule",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      decorationThickness: 4.0,
                      shadows: [Shadow(
                        color: Colors.white,
                        offset: Offset(0, -5),
                      )],
                      color: Colors.transparent,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                navigateToEvents(context);
              },
              child: const Text("Events",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                navigateToTeams(context);
              },
              child: const Text("Teams",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            SizedBox(width: 0.05 * width, height: 0.1),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SCHEDULE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.053 * width,
                              fontFamily: 'Xavier1',
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.white,
                        indent: 0,
                        endIndent: 0,
                        height: 55,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              navigateToDay(context, 1);
                            },
                            child: const Text(
                              'DAY 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontFamily: 'Xavier2',
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              navigateToDay(context, 2);
                            },
                            child: const Text(
                              'DAY 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontFamily: 'Xavier2',
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              navigateToDay(context, 3);
                            },
                            child: const Text(
                              'DAY 3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontFamily: 'Xavier2',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.white,
                        indent: 0,
                        endIndent: 0,
                        height: 55,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: Events,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: Venue),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: Timing),
                        ],
                      ),
                      SizedBox(height: 1 / 7.5 * height),
                      Container(
                        color: const Color(0xff2F303A),
                        height: ((1.6 / 5) * height),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 5, width: 10),
                                  const Text(
                                    "Location",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3'),
                                  ),
                                  Container(
                                    child: InkWell(
                                      onTap: () {
                                        launch(
                                            "https://www.google.com/maps/place/St.+Xavier's+College+(Autonomous)+-+Kolkata/@22.5489161,88.356172,393m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x62c7778aead16f97!8m2!3d22.5489161!4d88.356172?hl=en-US");
                                      },
                                      child: Container(
                                        height:
                                            (3.5 / 5) * ((1.6 / 5) * height),
                                        width: (1 / 5.5) * width,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "images/Xaviers.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "30 Mother Teresa Sarani, Kolkata-700016",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3'),
                                  ),
                                ]),
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 0, width: 10),
                                  Text(
                                    "Contact Us",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3'),
                                  ),
                                  Text(
                                    "Gmail: xuberancetechteam2022@gmail.com",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3'),
                                  ),
                                  Text(
                                    "Phone1: 9876543210",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3'),
                                  ),
                                  Text(
                                    "Phone2: 0123456789",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3'),
                                  ),
                                ]),
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 0, width: 10),
                                  Text(
                                    "Social Handles",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3'),
                                  ),
                                  Text(
                                    "Instagram",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3'),
                                  ),
                                  Text(
                                    "You Tube",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3'),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
